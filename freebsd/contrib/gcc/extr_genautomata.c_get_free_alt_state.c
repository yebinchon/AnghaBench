
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct alt_state {int dummy; } ;
typedef TYPE_1__* alt_state_t ;
struct TYPE_5__ {int * next_sorted_alt_state; struct TYPE_5__* next_alt_state; int * state; } ;


 int allocated_alt_states_num ;
 TYPE_1__* create_node (int) ;
 TYPE_1__* first_free_alt_state ;

__attribute__((used)) static alt_state_t
get_free_alt_state (void)
{
  alt_state_t result;

  if (first_free_alt_state != ((void*)0))
    {
      result = first_free_alt_state;
      first_free_alt_state = first_free_alt_state->next_alt_state;
    }
  else
    {

      allocated_alt_states_num++;

      result = create_node (sizeof (struct alt_state));
    }
  result->state = ((void*)0);
  result->next_alt_state = ((void*)0);
  result->next_sorted_alt_state = ((void*)0);
  return result;
}
