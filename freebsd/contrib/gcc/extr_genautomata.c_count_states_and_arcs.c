
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int automaton_t ;


 int curr_counted_arcs_num ;
 int curr_counted_states_num ;
 int incr_states_and_arcs_nums ;
 int pass_states (int ,int ) ;

__attribute__((used)) static void
count_states_and_arcs (automaton_t automaton, int *states_num,
         int *arcs_num)
{
  curr_counted_states_num = 0;
  curr_counted_arcs_num = 0;
  pass_states (automaton, incr_states_and_arcs_nums);
  *states_num = curr_counted_states_num;
  *arcs_num = curr_counted_arcs_num;
}
