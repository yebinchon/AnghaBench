
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int nrules ;
 int putc (char,int *) ;
 size_t* ritem ;
 size_t* rlhs ;
 int strlen (char*) ;
 char** symbol_name ;
 int * verbose_file ;
 int vflag ;

__attribute__((used)) static void
print_grammar(void)
{
    int i, k;
    size_t j, spacing = 0;
    FILE *f = verbose_file;

    if (!vflag)
 return;

    k = 1;
    for (i = 2; i < nrules; ++i)
    {
 if (rlhs[i] != rlhs[i - 1])
 {
     if (i != 2)
  fprintf(f, "\n");
     fprintf(f, "%4d  %s :", i - 2, symbol_name[rlhs[i]]);
     spacing = strlen(symbol_name[rlhs[i]]) + 1;
 }
 else
 {
     fprintf(f, "%4d  ", i - 2);
     j = spacing;
     while (j-- != 0)
  putc(' ', f);
     putc('|', f);
 }

 while (ritem[k] >= 0)
 {
     fprintf(f, " %s", symbol_name[ritem[k]]);
     ++k;
 }
 ++k;
 putc('\n', f);
    }
}
