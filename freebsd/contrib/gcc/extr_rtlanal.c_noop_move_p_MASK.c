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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ CLOBBER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NOOP_MOVE_INSN_CODE ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_EQUAL ; 
 int /*<<< orphan*/  REG_RETVAL ; 
 scalar_t__ SET ; 
 scalar_t__ USE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7 (rtx insn)
{
  rtx pat = FUNC2 (insn);

  if (FUNC1 (insn) == NOOP_MOVE_INSN_CODE)
    return 1;

  /* Insns carrying these notes are useful later on.  */
  if (FUNC5 (insn, REG_EQUAL, NULL_RTX))
    return 0;

  /* For now treat an insn with a REG_RETVAL note as a
     a special insn which should not be considered a no-op.  */
  if (FUNC5 (insn, REG_RETVAL, NULL_RTX))
    return 0;

  if (FUNC0 (pat) == SET && FUNC6 (pat))
    return 1;

  if (FUNC0 (pat) == PARALLEL)
    {
      int i;
      /* If nothing but SETs of registers to themselves,
	 this insn can also be deleted.  */
      for (i = 0; i < FUNC4 (pat, 0); i++)
	{
	  rtx tem = FUNC3 (pat, 0, i);

	  if (FUNC0 (tem) == USE
	      || FUNC0 (tem) == CLOBBER)
	    continue;

	  if (FUNC0 (tem) != SET || ! FUNC6 (tem))
	    return 0;
	}

      return 1;
    }
  return 0;
}