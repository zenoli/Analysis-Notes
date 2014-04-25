#!/bin/bash
cd "../MAINs"
for i in {1..3}
do
   pdflatex main.tex
done

rm -f *.out *.log *.aux *.toc
mkdir -p "../Output"
mv main.pdf "../Output/Notizien - Analysis I&II.pdf"
{ # your 'try' block
    growlnotify "Finished Generating Main"  -m "Can be found in the Output folder"
} || {
	echo -e "\n\n#### FINISHED GENERATING MAIN, CAN BE FOUND IN THE OUTPUT FOLDER ####\n\n"
}

