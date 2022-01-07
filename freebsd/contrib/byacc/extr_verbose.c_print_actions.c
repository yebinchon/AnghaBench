
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nshifts; size_t* shift; } ;
typedef TYPE_1__ shifts ;
typedef int action ;


 scalar_t__ ISVAR (int) ;
 int* accessing_symbol ;
 int * defred ;
 int final_state ;
 int fprintf (int ,char*) ;
 int ** parser ;
 int print_gotos (int) ;
 int print_reductions (int *,int ) ;
 int print_shifts (int *) ;
 TYPE_1__** shift_table ;
 int verbose_file ;

__attribute__((used)) static void
print_actions(int stateno)
{
    action *p;
    shifts *sp;
    int as;

    if (stateno == final_state)
 fprintf(verbose_file, "\t$end  accept\n");

    p = parser[stateno];
    if (p)
    {
 print_shifts(p);
 print_reductions(p, defred[stateno]);
    }

    sp = shift_table[stateno];
    if (sp && sp->nshifts > 0)
    {
 as = accessing_symbol[sp->shift[sp->nshifts - 1]];
 if (ISVAR(as))
     print_gotos(stateno);
    }
}
