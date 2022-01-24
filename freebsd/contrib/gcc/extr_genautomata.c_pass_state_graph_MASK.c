#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* state_t ;
typedef  TYPE_3__* arc_t ;
struct TYPE_12__ {TYPE_1__* to_state; } ;
struct TYPE_11__ {scalar_t__ pass_num; } ;

/* Variables and functions */
 scalar_t__ curr_state_graph_pass_num ; 
 TYPE_3__* FUNC0 (TYPE_1__*) ; 
 TYPE_3__* FUNC1 (TYPE_3__*) ; 
 void FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3 (state_t start_state, void (*applied_func) (state_t state))
{
  arc_t arc;

  if (start_state->pass_num == curr_state_graph_pass_num)
    return;
  start_state->pass_num = curr_state_graph_pass_num;
  (*applied_func) (start_state);
  for (arc = FUNC0 (start_state);
       arc != NULL;
       arc = FUNC1 (arc))
    FUNC3 (arc->to_state, applied_func);
}