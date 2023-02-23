#!/bin/sh
#Author: Ethan Villa
#Date created: 2/23/23
#Date moditified:
#Script: homework.sh
# Description: This is server management homework.
echo "What is your favorite sport?"
read sport
echo "Your favorite sport is $sport"
sleep 2


function Greet() {
    str="Good Evening $name"
    echo $str
}

echo "-> What's your name?"
read name

val=$(Greet)
echo -e "-> $val"
sleep 3
echo "Have a good night!"
sleep 2

user=$(whoami)
date=$(date)
whereami=$(pwd)

echo "You are user $user, today is $date, and you are in $whereami"
sleep 2

mkdir -p reports
grep B2 shipments.csv > reports/B2.csv

echo "Report was created"
sleep 2

echo -n "Enter a new directory to create"
read dir

if [[ -d "$dir" ]]; then
    echo "Sorry directory exists"
else
    `mkdir $dir`
    echo "new Directory has been made"
fi