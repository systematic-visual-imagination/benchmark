#!/bin/bash

find . -type d | while read -r dir; do
    base_dir=$(basename "$dir")
    if [[ $base_dir =~ ^0+ && 10#${base_dir} -ge 100 ]]; then
        rm -rf "${dir}"
    fi
done

