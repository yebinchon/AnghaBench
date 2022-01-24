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
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  previous_group ; 
 int FUNC7 () ; 
 int rs6000_sched_insert_nops ; 
 int sched_finish_regroup_exact ; 

__attribute__((used)) static int
FUNC8 (int sched_verbose, FILE *dump, rtx *group_insns,
		 rtx next_insn, bool *group_end, int can_issue_more,
		 int *group_count)
{
  rtx nop;
  bool force;
  int issue_rate = FUNC7 ();
  bool end = *group_end;
  int i;

  if (next_insn == NULL_RTX)
    return can_issue_more;

  if (rs6000_sched_insert_nops > sched_finish_regroup_exact)
    return can_issue_more;

  force = FUNC5 (group_insns, next_insn);
  if (!force)
    return can_issue_more;

  if (sched_verbose > 6)
    FUNC1 (dump,"force: group count = %d, can_issue_more = %d\n",
	     *group_count ,can_issue_more);

  if (rs6000_sched_insert_nops == sched_finish_regroup_exact)
    {
      if (*group_end)
	can_issue_more = 0;

      /* Since only a branch can be issued in the last issue_slot, it is
	 sufficient to insert 'can_issue_more - 1' nops if next_insn is not
	 a branch. If next_insn is a branch, we insert 'can_issue_more' nops;
	 in this case the last nop will start a new group and the branch
	 will be forced to the new group.  */
      if (can_issue_more && !FUNC4 (next_insn))
	can_issue_more--;

      while (can_issue_more > 0)
	{
	  nop = FUNC2 ();
	  FUNC0 (nop, next_insn);
	  can_issue_more--;
	}

      *group_end = true;
      return 0;
    }

  if (rs6000_sched_insert_nops < sched_finish_regroup_exact)
    {
      int n_nops = rs6000_sched_insert_nops;

      /* Nops can't be issued from the branch slot, so the effective
	 issue_rate for nops is 'issue_rate - 1'.  */
      if (can_issue_more == 0)
	can_issue_more = issue_rate;
      can_issue_more--;
      if (can_issue_more == 0)
	{
	  can_issue_more = issue_rate - 1;
	  (*group_count)++;
	  end = true;
	  for (i = 0; i < issue_rate; i++)
	    {
	      group_insns[i] = 0;
	    }
	}

      while (n_nops > 0)
	{
	  nop = FUNC2 ();
	  FUNC0 (nop, next_insn);
	  if (can_issue_more == issue_rate - 1) /* new group begins */
	    end = false;
	  can_issue_more--;
	  if (can_issue_more == 0)
	    {
	      can_issue_more = issue_rate - 1;
	      (*group_count)++;
	      end = true;
	      for (i = 0; i < issue_rate; i++)
		{
		  group_insns[i] = 0;
		}
	    }
	  n_nops--;
	}

      /* Scale back relative to 'issue_rate' (instead of 'issue_rate - 1').  */
      can_issue_more++;

      /* Is next_insn going to start a new group?  */
      *group_end
	= (end
	   || (can_issue_more == 1 && !FUNC4 (next_insn))
	   || (can_issue_more <= 2 && FUNC6 (next_insn))
	   || (can_issue_more < issue_rate &&
	       FUNC3 (next_insn, previous_group)));
      if (*group_end && end)
	(*group_count)--;

      if (sched_verbose > 6)
	FUNC1 (dump, "done force: group count = %d, can_issue_more = %d\n",
		 *group_count, can_issue_more);
      return can_issue_more;
    }

  return can_issue_more;
}