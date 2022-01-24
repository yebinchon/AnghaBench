#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
struct TYPE_2__ {scalar_t__ other_insn; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int,...) ; 
 int FUNC3 (scalar_t__) ; 
 size_t last_insn_cost ; 
 int* uid_insn_cost ; 
 TYPE_1__ undobuf ; 

__attribute__((used)) static bool
FUNC4 (rtx i1, rtx i2, rtx i3, rtx newpat, rtx newi2pat)
{
  int i1_cost, i2_cost, i3_cost;
  int new_i2_cost, new_i3_cost;
  int old_cost, new_cost;

  /* Lookup the original insn_rtx_costs.  */
  i2_cost = FUNC0 (i2) <= last_insn_cost
	    ? uid_insn_cost[FUNC0 (i2)] : 0;
  i3_cost = FUNC0 (i3) <= last_insn_cost
	    ? uid_insn_cost[FUNC0 (i3)] : 0;

  if (i1)
    {
      i1_cost = FUNC0 (i1) <= last_insn_cost
		? uid_insn_cost[FUNC0 (i1)] : 0;
      old_cost = (i1_cost > 0 && i2_cost > 0 && i3_cost > 0)
		 ? i1_cost + i2_cost + i3_cost : 0;
    }
  else
    {
      old_cost = (i2_cost > 0 && i3_cost > 0) ? i2_cost + i3_cost : 0;
      i1_cost = 0;
    }

  /* Calculate the replacement insn_rtx_costs.  */
  new_i3_cost = FUNC3 (newpat);
  if (newi2pat)
    {
      new_i2_cost = FUNC3 (newi2pat);
      new_cost = (new_i2_cost > 0 && new_i3_cost > 0)
		 ? new_i2_cost + new_i3_cost : 0;
    }
  else
    {
      new_cost = new_i3_cost;
      new_i2_cost = 0;
    }

  if (undobuf.other_insn)
    {
      int old_other_cost, new_other_cost;

      old_other_cost = (FUNC0 (undobuf.other_insn) <= last_insn_cost
			? uid_insn_cost[FUNC0 (undobuf.other_insn)] : 0);
      new_other_cost = FUNC3 (FUNC1 (undobuf.other_insn));
      if (old_other_cost > 0 && new_other_cost > 0)
	{
	  old_cost += old_other_cost;
	  new_cost += new_other_cost;
	}
      else
	old_cost = 0;
    }

  /* Disallow this recombination if both new_cost and old_cost are
     greater than zero, and new_cost is greater than old cost.  */
  if (old_cost > 0
      && new_cost > old_cost)
    {
      if (dump_file)
	{
	  if (i1)
	    {
	      FUNC2 (dump_file,
		       "rejecting combination of insns %d, %zu and %zu\n",
		       FUNC0 (i1), FUNC0 (i2), FUNC0 (i3));
	      FUNC2 (dump_file, "original costs %d + %d + %d = %d\n",
		       i1_cost, i2_cost, i3_cost, old_cost);
	    }
	  else
	    {
	      FUNC2 (dump_file,
		       "rejecting combination of insns %d and %zu\n",
		       FUNC0 (i2), FUNC0 (i3));
	      FUNC2 (dump_file, "original costs %d + %d = %d\n",
		       i2_cost, i3_cost, old_cost);
	    }

	  if (newi2pat)
	    {
	      FUNC2 (dump_file, "replacement costs %d + %d = %d\n",
		       new_i2_cost, new_i3_cost, new_cost);
	    }
	  else
	    FUNC2 (dump_file, "replacement cost %d\n", new_cost);
	}

      return false;
    }

  /* Update the uid_insn_cost array with the replacement costs.  */
  uid_insn_cost[FUNC0 (i2)] = new_i2_cost;
  uid_insn_cost[FUNC0 (i3)] = new_i3_cost;
  if (i1)
    uid_insn_cost[FUNC0 (i1)] = 0;

  return true;
}