
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nitems; int* items; } ;
typedef TYPE_1__ core ;
typedef size_t Value_t ;


 int fprintf (int ,char*,...) ;
 int putc (char,int ) ;
 size_t* ritem ;
 size_t* rlhs ;
 int* rrhs ;
 TYPE_1__** state_table ;
 char** symbol_name ;
 int verbose_file ;

__attribute__((used)) static void
print_core(int state)
{
    int i;
    int k;
    int rule;
    core *statep;
    Value_t *sp;
    Value_t *sp1;

    statep = state_table[state];
    k = statep->nitems;

    for (i = 0; i < k; i++)
    {
 sp1 = sp = ritem + statep->items[i];

 while (*sp >= 0)
     ++sp;
 rule = -(*sp);
 fprintf(verbose_file, "\t%s : ", symbol_name[rlhs[rule]]);

 for (sp = ritem + rrhs[rule]; sp < sp1; sp++)
     fprintf(verbose_file, "%s ", symbol_name[*sp]);

 putc('.', verbose_file);

 while (*sp >= 0)
 {
     fprintf(verbose_file, " %s", symbol_name[*sp]);
     sp++;
 }
 fprintf(verbose_file, "  (%d)\n", -2 - *sp);
    }
}
