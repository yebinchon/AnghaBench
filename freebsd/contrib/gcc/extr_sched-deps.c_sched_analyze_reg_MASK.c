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
struct deps {int max_reg; int /*<<< orphan*/  last_function_call; int /*<<< orphan*/  sched_before_next_call; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int CLOBBER ; 
 int FIRST_PSEUDO_REGISTER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_DEP_ANTI ; 
 scalar_t__ FUNC3 (int) ; 
 int SET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int USE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int** hard_regno_nregs ; 
 int /*<<< orphan*/  reg_pending_clobbers ; 
 int /*<<< orphan*/  reg_pending_sets ; 
 int /*<<< orphan*/  reg_pending_uses ; 
 int /*<<< orphan*/  reload_completed ; 
 int /*<<< orphan*/  FUNC11 (struct deps*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12 (struct deps *deps, int regno, enum machine_mode mode,
		   enum rtx_code ref, rtx insn)
{
  /* A hard reg in a wide mode may really be multiple registers.
     If so, mark all of them just like the first.  */
  if (regno < FIRST_PSEUDO_REGISTER)
    {
      int i = hard_regno_nregs[regno][mode];
      if (ref == SET)
	{
	  while (--i >= 0)
	    FUNC4 (reg_pending_sets, regno + i);
	}
      else if (ref == USE)
	{
	  while (--i >= 0)
	    FUNC4 (reg_pending_uses, regno + i);
	}
      else
	{
	  while (--i >= 0)
	    FUNC4 (reg_pending_clobbers, regno + i);
	}
    }

  /* ??? Reload sometimes emits USEs and CLOBBERs of pseudos that
     it does not reload.  Ignore these as they have served their
     purpose already.  */
  else if (regno >= deps->max_reg)
    {
      enum rtx_code code = FUNC0 (FUNC2 (insn));
      FUNC8 (code == USE || code == CLOBBER);
    }

  else
    {
      if (ref == SET)
	FUNC4 (reg_pending_sets, regno);
      else if (ref == USE)
	FUNC4 (reg_pending_uses, regno);
      else
	FUNC4 (reg_pending_clobbers, regno);

      /* Pseudos that are REG_EQUIV to something may be replaced
	 by that during reloading.  We need only add dependencies for
	the address in the REG_EQUIV note.  */
      if (!reload_completed && FUNC9 (regno))
	{
	  rtx t = FUNC10 (regno);
	  if (FUNC1 (t))
	    FUNC11 (deps, FUNC5 (t, 0), insn);
	}

      /* Don't let it cross a call after scheduling if it doesn't
	 already cross one.  */
      if (FUNC3 (regno) == 0)
	{
	  if (ref == USE)
	    deps->sched_before_next_call
	      = FUNC7 (insn, deps->sched_before_next_call);
	  else
	    FUNC6 (insn, deps->last_function_call, 1,
				 REG_DEP_ANTI);
	}
    }
}