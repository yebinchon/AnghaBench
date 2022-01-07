
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* state_t ;
typedef TYPE_3__* arc_t ;
struct TYPE_12__ {TYPE_1__* to_state; } ;
struct TYPE_11__ {scalar_t__ pass_num; } ;


 scalar_t__ curr_state_graph_pass_num ;
 TYPE_3__* first_out_arc (TYPE_1__*) ;
 TYPE_3__* next_out_arc (TYPE_3__*) ;
 void stub1 (TYPE_1__*) ;

__attribute__((used)) static void
pass_state_graph (state_t start_state, void (*applied_func) (state_t state))
{
  arc_t arc;

  if (start_state->pass_num == curr_state_graph_pass_num)
    return;
  start_state->pass_num = curr_state_graph_pass_num;
  (*applied_func) (start_state);
  for (arc = first_out_arc (start_state);
       arc != ((void*)0);
       arc = next_out_arc (arc))
    pass_state_graph (arc->to_state, applied_func);
}
