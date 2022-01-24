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
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* state_t ;
typedef  TYPE_2__* arc_t ;
typedef  TYPE_3__* ainsn_t ;
struct TYPE_12__ {scalar_t__ insn_reserv_decl; } ;
struct TYPE_11__ {TYPE_3__* insn; TYPE_1__* to_state; } ;
struct TYPE_10__ {scalar_t__ state_pass_num; int min_insn_issue_delay; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  advance_cycle_insn_decl ; 
 scalar_t__ curr_state_pass_num ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC3 (state_t state, ainsn_t ainsn)
{
  arc_t arc;
  int min_insn_issue_delay, insn_issue_delay;

  if (state->state_pass_num == curr_state_pass_num
      || state->min_insn_issue_delay != -1)
    /* We've entered into a loop or already have the correct value for
       given state and ainsn.  */
    return state->min_insn_issue_delay;
  state->state_pass_num = curr_state_pass_num;
  min_insn_issue_delay = -1;
  for (arc = FUNC1 (state); arc != NULL; arc = FUNC2 (arc))
    if (arc->insn == ainsn)
      {
	min_insn_issue_delay = 0;
	break;
      }
    else
      {
        insn_issue_delay = FUNC3 (arc->to_state, ainsn);
	if (insn_issue_delay != -1)
	  {
	    if (arc->insn->insn_reserv_decl
		== FUNC0 (advance_cycle_insn_decl))
	      insn_issue_delay++;
	    if (min_insn_issue_delay == -1
		|| min_insn_issue_delay > insn_issue_delay)
	      {
		min_insn_issue_delay = insn_issue_delay;
		if (insn_issue_delay == 0)
		  break;
	      }
	  }
      }
  return min_insn_issue_delay;
}