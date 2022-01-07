
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* shift; int nshifts; } ;
typedef TYPE_1__ shifts ;
typedef int Value_t ;


 scalar_t__ ISVAR (int) ;
 int* accessing_symbol ;
 int fprintf (int ,char*,char*,int) ;
 int putc (char,int ) ;
 TYPE_1__** shift_table ;
 char** symbol_name ;
 int verbose_file ;

__attribute__((used)) static void
print_gotos(int stateno)
{
    int i, k;
    int as;
    Value_t *to_state2;
    shifts *sp;

    putc('\n', verbose_file);
    sp = shift_table[stateno];
    to_state2 = sp->shift;
    for (i = 0; i < sp->nshifts; ++i)
    {
 k = to_state2[i];
 as = accessing_symbol[k];
 if (ISVAR(as))
     fprintf(verbose_file, "\t%s  goto %d\n", symbol_name[as], k);
    }
}
