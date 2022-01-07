
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Lst_ForEach (int ,int ,int *) ;
 int SuffPrintSuff ;
 int SuffPrintTrans ;
 int debug_file ;
 int fprintf (int ,char*) ;
 int sufflist ;
 int transforms ;

void
Suff_PrintAll(void)
{
    fprintf(debug_file, "#*** Suffixes:\n");
    Lst_ForEach(sufflist, SuffPrintSuff, ((void*)0));

    fprintf(debug_file, "#*** Transformations:\n");
    Lst_ForEach(transforms, SuffPrintTrans, ((void*)0));
}
