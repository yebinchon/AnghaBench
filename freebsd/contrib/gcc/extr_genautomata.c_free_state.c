
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* state_t ;
struct TYPE_4__ {struct TYPE_4__* next_equiv_class_state; int component_states; } ;


 TYPE_1__* first_free_state ;
 int free_alt_states (int ) ;

__attribute__((used)) static void
free_state (state_t state)
{
  free_alt_states (state->component_states);
  state->next_equiv_class_state = first_free_state;
  first_free_state = state;
}
