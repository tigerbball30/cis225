#!/bin/bash
#files.sh

if (( $# < 1 || $# > 1 )); then
  echo "Usage: files.sh <name>"
  exit 1
fi

if [ "$1" = "tripwire.txt" ]; then
  echo "Error"
  exit 0
else
  sudo tripwire -m c > $HOME/$1
  diff -y ~/$1 ~/tripwire.txt > "~/$1.diff"
fi
exit 0
