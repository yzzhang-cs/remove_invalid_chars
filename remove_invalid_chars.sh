grep -axvrl '.*' | grep -v .gif | grep -v .png | grep -v .jpg | while read -r line; do
        iconv -f utf-8 -t utf-8 -c $line > .tmp_file && mv .tmp_file $line
done
