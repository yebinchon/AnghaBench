
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int state_t ;
typedef int * arc_t ;


 int curr_counted_arcs_num ;
 int curr_counted_states_num ;
 int * first_out_arc (int ) ;
 int * next_out_arc (int *) ;

__attribute__((used)) static void
incr_states_and_arcs_nums (state_t state)
{
  arc_t arc;

  curr_counted_states_num++;
  for (arc = first_out_arc (state); arc != ((void*)0); arc = next_out_arc (arc))
    curr_counted_arcs_num++;
}
