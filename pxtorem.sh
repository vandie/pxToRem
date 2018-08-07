#!/bin/bash
px="$1"
regex='^[0-9]+$'
if ! [[ $px =~ $regex ]] ; then
  echo "Error: Invalid px input: '$px'"
  echo "Error: Invalid px input: '$px'" > logfile.log
  exit 125
fi
rem=$(echo "scale=3; $px/16" |bc)
echo $rem"rem" | pbcopy
echo $rem"rem"
