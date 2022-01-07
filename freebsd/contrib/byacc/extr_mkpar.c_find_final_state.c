
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t* shift; int nshifts; } ;
typedef TYPE_1__ shifts ;
typedef size_t Value_t ;


 int* accessing_symbol ;
 size_t final_state ;
 int* ritem ;
 TYPE_1__** shift_table ;

__attribute__((used)) static void
find_final_state(void)
{
    int goal, i;
    Value_t *to_state2;
    shifts *p;

    p = shift_table[0];
    to_state2 = p->shift;
    goal = ritem[1];
    for (i = p->nshifts - 1; i >= 0; --i)
    {
 final_state = to_state2[i];
 if (accessing_symbol[final_state] == goal)
     break;
    }
}
