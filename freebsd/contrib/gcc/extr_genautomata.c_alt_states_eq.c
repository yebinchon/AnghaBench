
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* alt_state_t ;
struct TYPE_6__ {struct TYPE_6__* next_sorted_alt_state; } ;


 scalar_t__ alt_state_cmp (TYPE_1__**,TYPE_1__**) ;

__attribute__((used)) static int
alt_states_eq (alt_state_t alt_states_1, alt_state_t alt_states_2)
{
  while (alt_states_1 != ((void*)0) && alt_states_2 != ((void*)0)
         && alt_state_cmp (&alt_states_1, &alt_states_2) == 0)
    {
      alt_states_1 = alt_states_1->next_sorted_alt_state;
      alt_states_2 = alt_states_2->next_sorted_alt_state;
    }
  return alt_states_1 == alt_states_2;
}
