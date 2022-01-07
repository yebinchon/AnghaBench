
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* state_t ;
typedef int reserv_sets_t ;
struct TYPE_9__ {scalar_t__ automaton; int reservs; } ;


 int free_state (TYPE_1__*) ;
 int gcc_assert (int) ;
 TYPE_1__* get_free_state (int,scalar_t__) ;
 TYPE_1__* insert_state (TYPE_1__*) ;
 int reserv_sets_and (int ,int ,int ) ;
 int reserv_sets_or (int ,int ,int ) ;

__attribute__((used)) static state_t
states_union (state_t state1, state_t state2, reserv_sets_t reservs)
{
  state_t result;
  state_t state_in_table;

  gcc_assert (state1->automaton == state2->automaton);
  result = get_free_state (1, state1->automaton);
  reserv_sets_or (result->reservs, state1->reservs, state2->reservs);
  reserv_sets_and (result->reservs, result->reservs, reservs);
  state_in_table = insert_state (result);
  if (result != state_in_table)
    {
      free_state (result);
      result = state_in_table;
    }
  return result;
}
