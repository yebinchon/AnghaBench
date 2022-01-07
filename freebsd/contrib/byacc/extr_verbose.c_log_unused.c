
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t Value_t ;


 int fprintf (int ,char*,...) ;
 int nrules ;
 size_t* ritem ;
 size_t* rlhs ;
 int* rrhs ;
 int * rules_used ;
 char** symbol_name ;
 int verbose_file ;

__attribute__((used)) static void
log_unused(void)
{
    int i;
    Value_t *p;

    fprintf(verbose_file, "\n\nRules never reduced:\n");
    for (i = 3; i < nrules; ++i)
    {
 if (!rules_used[i])
 {
     fprintf(verbose_file, "\t%s :", symbol_name[rlhs[i]]);
     for (p = ritem + rrhs[i]; *p >= 0; ++p)
  fprintf(verbose_file, " %s", symbol_name[*p]);
     fprintf(verbose_file, "  (%d)\n", i - 2);
 }
    }
}
