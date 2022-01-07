
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t number; int accessing_symbol; struct TYPE_3__* next; } ;
typedef TYPE_1__ core ;


 int * NEW2 (int ,int ) ;
 int Value_t ;
 int * accessing_symbol ;
 TYPE_1__* first_state ;
 int nstates ;

__attribute__((used)) static void
set_accessing_symbol(void)
{
    core *sp;

    accessing_symbol = NEW2(nstates, Value_t);
    for (sp = first_state; sp; sp = sp->next)
 accessing_symbol[sp->number] = sp->accessing_symbol;
}
