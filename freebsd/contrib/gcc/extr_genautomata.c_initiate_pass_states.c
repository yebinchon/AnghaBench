
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ curr_state_graph_pass_num ;

__attribute__((used)) static void
initiate_pass_states (void)
{
  curr_state_graph_pass_num = 0;
}
