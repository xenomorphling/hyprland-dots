#!/bin/env dash

# Author: https://github.com/x0rzavi
# Description: Enable root access to x-windows system 
# Dependencies: xhost, sudo
# Derived: https://gist.github.com/wachambo/bd22e12db2d5a46dc109bd0d553733be

if [ $# != 1 ]; then
	echo "Illegal number of parameters."
	echo
	echo "Usage: with-sudo.sh [command]"
	exit 1
fi

xhost +SI:localuser:root
sudo "$1"
xhost -SI:localuser:root
