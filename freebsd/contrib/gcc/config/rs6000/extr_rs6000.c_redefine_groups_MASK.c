#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ TImode ; 
 scalar_t__ VOIDmode ; 
 scalar_t__* FUNC2 (int) ; 
 int /*<<< orphan*/  current_group ; 
 int FUNC3 (int,int /*<<< orphan*/ *,scalar_t__*,scalar_t__,int*,int,int*) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  previous_group ; 
 int FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ *,int,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC10 (FILE *dump, int sched_verbose, rtx prev_head_insn, rtx tail)
{
  rtx insn, next_insn;
  int issue_rate;
  int can_issue_more;
  int slot, i;
  bool group_end;
  int group_count = 0;
  rtx *group_insns;

  /* Initialize.  */
  issue_rate = FUNC8 ();
  group_insns = FUNC2 (issue_rate * sizeof (rtx));
  for (i = 0; i < issue_rate; i++)
    {
      group_insns[i] = 0;
    }
  can_issue_more = issue_rate;
  slot = 0;
  insn = FUNC4 (prev_head_insn, tail);
  group_end = false;

  while (insn != NULL_RTX)
    {
      slot = (issue_rate - can_issue_more);
      group_insns[slot] = insn;
      can_issue_more =
	FUNC9 (dump, sched_verbose, insn, can_issue_more);
      if (FUNC5 (insn, current_group))
	can_issue_more = 0;

      next_insn = FUNC4 (insn, tail);
      if (next_insn == NULL_RTX)
	return group_count + 1;

      /* Is next_insn going to start a new group?  */
      group_end
	= (can_issue_more == 0
	   || (can_issue_more == 1 && !FUNC6 (next_insn))
	   || (can_issue_more <= 2 && FUNC7 (next_insn))
	   || (can_issue_more < issue_rate &&
	       FUNC5 (next_insn, previous_group)));

      can_issue_more = FUNC3 (sched_verbose, dump, group_insns,
					next_insn, &group_end, can_issue_more,
					&group_count);

      if (group_end)
	{
	  group_count++;
	  can_issue_more = 0;
	  for (i = 0; i < issue_rate; i++)
	    {
	      group_insns[i] = 0;
	    }
	}

      if (FUNC0 (next_insn) == TImode && can_issue_more)
	FUNC1 (next_insn, VOIDmode);
      else if (!can_issue_more && FUNC0 (next_insn) != TImode)
	FUNC1 (next_insn, TImode);

      insn = next_insn;
      if (can_issue_more == 0)
	can_issue_more = issue_rate;
    } /* while */

  return group_count;
}