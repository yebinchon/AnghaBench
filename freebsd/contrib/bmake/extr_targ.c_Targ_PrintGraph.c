
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Dir_PrintDirectories () ;
 int Lst_ForEach (int ,int ,int*) ;
 int Suff_PrintAll () ;
 int TargPrintOnlySrc ;
 int Targ_PrintNode ;
 int VAR_CMD ;
 int VAR_GLOBAL ;
 int Var_Dump (int ) ;
 int allTargets ;
 int debug_file ;
 int fprintf (int ,char*) ;

void
Targ_PrintGraph(int pass)
{
    fprintf(debug_file, "#*** Input graph:\n");
    Lst_ForEach(allTargets, Targ_PrintNode, &pass);
    fprintf(debug_file, "\n\n");
    fprintf(debug_file, "#\n#   Files that are only sources:\n");
    Lst_ForEach(allTargets, TargPrintOnlySrc, ((void*)0));
    fprintf(debug_file, "#*** Global Variables:\n");
    Var_Dump(VAR_GLOBAL);
    fprintf(debug_file, "#*** Command-line Variables:\n");
    Var_Dump(VAR_CMD);
    fprintf(debug_file, "\n");
    Dir_PrintDirectories();
    fprintf(debug_file, "\n");
    Suff_PrintAll();
}
