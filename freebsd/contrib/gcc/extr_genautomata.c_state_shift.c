
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* state_t ;
typedef int reserv_sets_t ;
struct TYPE_8__ {int reservs; int automaton; } ;


 int free_state (TYPE_1__*) ;
 TYPE_1__* get_free_state (int,int ) ;
 TYPE_1__* insert_state (TYPE_1__*) ;
 int reserv_sets_and (int ,int ,int ) ;
 int reserv_sets_shift (int ,int ) ;

__attribute__((used)) static state_t
state_shift (state_t state, reserv_sets_t reservs)
{
  state_t result;
  state_t state_in_table;

  result = get_free_state (1, state->automaton);
  reserv_sets_shift (result->reservs, state->reservs);
  reserv_sets_and (result->reservs, result->reservs, reservs);
  state_in_table = insert_state (result);
  if (result != state_in_table)
    {
      free_state (result);
      result = state_in_table;
    }
  return result;
}
