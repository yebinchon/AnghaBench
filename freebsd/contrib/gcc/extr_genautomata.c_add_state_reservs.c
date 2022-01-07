
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* state_t ;
typedef TYPE_2__* alt_state_t ;
struct TYPE_5__ {TYPE_1__* state; struct TYPE_5__* next_sorted_alt_state; } ;
struct TYPE_4__ {int reservs; TYPE_2__* component_states; } ;


 int VEC_safe_push (int ,int ,int ,int ) ;
 int heap ;
 int reserv_sets_t ;
 int state_reservs ;

__attribute__((used)) static void
add_state_reservs (state_t state)
{
  alt_state_t curr_alt_state;

  if (state->component_states != ((void*)0))
    for (curr_alt_state = state->component_states;
         curr_alt_state != ((void*)0);
         curr_alt_state = curr_alt_state->next_sorted_alt_state)
      add_state_reservs (curr_alt_state->state);
  else
    VEC_safe_push (reserv_sets_t,heap, state_reservs, state->reservs);
}
