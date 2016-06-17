#!/bin/bash

a=Picture
b=*.jpg
c=".jpg"
j=1;
for i in *.jpg
do
	if [ $j -lt 10 ]
	then
		newName="$a 00$j.jpg"
	elif [ $j -lt 100 ]
	then
		newName="$a 0$j.jpg"
	else
		newName="$a $j.jpg"
	fi
	j=$((j+1))
	mv "$i" "$newName"
done
