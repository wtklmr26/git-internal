#!/bin/bash

echo 'version 1' > test.txt

# gitオブジェクトを作成
git hash-object -w test.txt # 83baae61804e65cc73a7201a7252750c76066a30

echo 'version 2' > test.txt

# 別のgitオブジェクトを作成
git hash-object -w test.txt # 1f7a7a472abf3dd9643fd615f6da379c4acb3e3a

# バージョンを戻す
git cat-file -p 83baae61804e65cc73a7201a7252750c76066a30 > test.txt

# オブジェクト一覧
find .git/objects -type f
