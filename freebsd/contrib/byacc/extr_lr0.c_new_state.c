
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void** items; struct TYPE_4__* next; void* nitems; void* number; void* accessing_symbol; } ;
typedef TYPE_1__ core ;
typedef void* Value_t ;


 scalar_t__ MAXYYINT ;
 scalar_t__ allocate (int) ;
 int fatal (char*) ;
 int fprintf (int ,char*,int) ;
 void*** kernel_base ;
 void*** kernel_end ;
 TYPE_1__* last_state ;
 scalar_t__ nstates ;
 int stderr ;

__attribute__((used)) static core *
new_state(int symbol)
{
    unsigned n;
    core *p;
    Value_t *isp1;
    Value_t *isp2;
    Value_t *iend;





    if (nstates >= MAXYYINT)
 fatal("too many states");

    isp1 = kernel_base[symbol];
    iend = kernel_end[symbol];
    n = (unsigned)(iend - isp1);

    p = (core *)allocate((sizeof(core) + (n - 1) * sizeof(Value_t)));
    p->accessing_symbol = (Value_t)symbol;
    p->number = (Value_t)nstates;
    p->nitems = (Value_t)n;

    isp2 = p->items;
    while (isp1 < iend)
 *isp2++ = *isp1++;

    last_state->next = p;
    last_state = p;

    nstates++;

    return (p);
}
