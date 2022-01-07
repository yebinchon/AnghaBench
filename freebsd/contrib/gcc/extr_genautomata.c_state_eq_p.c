
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* state_t ;
typedef TYPE_2__* alt_state_t ;
struct TYPE_4__ {scalar_t__ state; struct TYPE_4__* next_sorted_alt_state; } ;
struct TYPE_3__ {scalar_t__ automaton; TYPE_2__* component_states; int reservs; } ;


 int reserv_sets_eq (int ,int ) ;

__attribute__((used)) static int
state_eq_p (const void *state_1, const void *state_2)
{
  alt_state_t alt_state_1;
  alt_state_t alt_state_2;

  if (((state_t) state_1)->automaton != ((state_t) state_2)->automaton)
    return 0;
  else if (((state_t) state_1)->component_states == ((void*)0)
           && ((state_t) state_2)->component_states == ((void*)0))
    return reserv_sets_eq (((state_t) state_1)->reservs,
      ((state_t) state_2)->reservs);
  else if (((state_t) state_1)->component_states != ((void*)0)
           && ((state_t) state_2)->component_states != ((void*)0))
    {
      for (alt_state_1 = ((state_t) state_1)->component_states,
           alt_state_2 = ((state_t) state_2)->component_states;
           alt_state_1 != ((void*)0) && alt_state_2 != ((void*)0);
           alt_state_1 = alt_state_1->next_sorted_alt_state,
    alt_state_2 = alt_state_2->next_sorted_alt_state)


        if (alt_state_1->state != alt_state_2->state)
          return 0;
      return alt_state_1 == alt_state_2;
    }
  else
    return 0;
}
