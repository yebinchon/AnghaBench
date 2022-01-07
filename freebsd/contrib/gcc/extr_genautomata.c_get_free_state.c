
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct state {int dummy; } ;
typedef TYPE_1__* state_t ;
typedef int set_el_t ;
typedef void* automaton_t ;
struct TYPE_5__ {int * reservs; void* longest_path_length; int unique_num; int * first_out_arc; void* automaton; int * component_states; scalar_t__ it_was_placed_in_stack_for_DFA_forming; scalar_t__ it_was_placed_in_stack_for_NDFA_forming; struct TYPE_5__* next_equiv_class_state; } ;


 void* UNDEFINED_LONGEST_PATH_LENGTH ;
 int * alloc_empty_reserv_sets () ;
 int allocated_states_num ;
 TYPE_1__* create_node (int) ;
 int curr_unique_state_num ;
 int els_in_reservs ;
 TYPE_1__* first_free_state ;
 int gcc_assert (int) ;
 scalar_t__ max_cycles_num ;
 int memset (int *,int ,int) ;

__attribute__((used)) static state_t
get_free_state (int with_reservs, automaton_t automaton)
{
  state_t result;

  gcc_assert (max_cycles_num > 0 && automaton);
  if (first_free_state)
    {
      result = first_free_state;
      first_free_state = result->next_equiv_class_state;

      result->next_equiv_class_state = ((void*)0);
      result->automaton = automaton;
      result->first_out_arc = ((void*)0);
      result->it_was_placed_in_stack_for_NDFA_forming = 0;
      result->it_was_placed_in_stack_for_DFA_forming = 0;
      result->component_states = ((void*)0);
      result->longest_path_length = UNDEFINED_LONGEST_PATH_LENGTH;
    }
  else
    {

      allocated_states_num++;

      result = create_node (sizeof (struct state));
      result->automaton = automaton;
      result->first_out_arc = ((void*)0);
      result->unique_num = curr_unique_state_num;
      result->longest_path_length = UNDEFINED_LONGEST_PATH_LENGTH;
      curr_unique_state_num++;
    }
  if (with_reservs)
    {
      if (result->reservs == ((void*)0))
        result->reservs = alloc_empty_reserv_sets ();
      else
        memset (result->reservs, 0, els_in_reservs * sizeof (set_el_t));
    }
  return result;
}
