
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int state_t ;


 int out_state_arcs_num (int ) ;

__attribute__((used)) static int
compare_transition_els_num (const void *state_ptr_1,
       const void *state_ptr_2)
{
  int transition_els_num_1;
  int transition_els_num_2;

  transition_els_num_1 = out_state_arcs_num (*(state_t *) state_ptr_1);
  transition_els_num_2 = out_state_arcs_num (*(state_t *) state_ptr_2);
  if (transition_els_num_1 < transition_els_num_2)
    return 1;
  else if (transition_els_num_1 == transition_els_num_2)
    return 0;
  else
    return -1;
}
