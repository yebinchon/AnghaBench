
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* state_t ;
typedef TYPE_3__* alt_state_t ;
struct TYPE_7__ {TYPE_1__* state; struct TYPE_7__* next_sorted_alt_state; } ;
struct TYPE_6__ {TYPE_3__* component_states; int reservs; } ;
struct TYPE_5__ {int reservs; } ;


 int test_unit_reserv (int ,int ,int) ;

__attribute__((used)) static int
first_cycle_unit_presence (state_t state, int unit_num)
{
  alt_state_t alt_state;

  if (state->component_states == ((void*)0))
    return test_unit_reserv (state->reservs, 0, unit_num);
  else
    {
      for (alt_state = state->component_states;
    alt_state != ((void*)0);
    alt_state = alt_state->next_sorted_alt_state)
 if (test_unit_reserv (alt_state->state->reservs, 0, unit_num))
   return 1;
    }
  return 0;
}
