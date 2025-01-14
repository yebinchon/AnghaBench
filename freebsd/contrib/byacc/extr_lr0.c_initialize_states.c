
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t nitems; int * items; scalar_t__ accessing_symbol; scalar_t__ number; scalar_t__ link; scalar_t__ next; } ;
typedef TYPE_1__ core ;
typedef size_t Value_t ;


 scalar_t__ MALLOC (int) ;
 int NO_SPACE (TYPE_1__*) ;
 size_t** derives ;
 TYPE_1__* first_state ;
 TYPE_1__* last_state ;
 int nstates ;
 int * rrhs ;
 size_t start_symbol ;
 TYPE_1__* this_state ;

__attribute__((used)) static void
initialize_states(void)
{
    unsigned i;
    Value_t *start_derives;
    core *p;

    start_derives = derives[start_symbol];
    for (i = 0; start_derives[i] >= 0; ++i)
 continue;

    p = (core *)MALLOC(sizeof(core) + i * sizeof(Value_t));
    NO_SPACE(p);

    p->next = 0;
    p->link = 0;
    p->number = 0;
    p->accessing_symbol = 0;
    p->nitems = (Value_t)i;

    for (i = 0; start_derives[i] >= 0; ++i)
 p->items[i] = rrhs[start_derives[i]];

    first_state = last_state = this_state = p;
    nstates = 1;
}
