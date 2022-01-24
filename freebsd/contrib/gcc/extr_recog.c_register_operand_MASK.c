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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ MODE_COMPLEX_FLOAT ; 
 scalar_t__ MODE_COMPLEX_INT ; 
 scalar_t__ NO_REGS ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int VOIDmode ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  reload_completed ; 

int
FUNC12 (rtx op, enum machine_mode mode)
{
  if (FUNC1 (op) != mode && mode != VOIDmode)
    return 0;

  if (FUNC0 (op) == SUBREG)
    {
      rtx sub = FUNC10 (op);

      /* Before reload, we can allow (SUBREG (MEM...)) as a register operand
	 because it is guaranteed to be reloaded into one.
	 Just make sure the MEM is valid in itself.
	 (Ideally, (SUBREG (MEM)...) should not exist after reload,
	 but currently it does result from (SUBREG (REG)...) where the
	 reg went on the stack.)  */
      if (! reload_completed && FUNC4 (sub))
	return FUNC11 (op, mode);

#ifdef CANNOT_CHANGE_MODE_CLASS
      if (REG_P (sub)
	  && REGNO (sub) < FIRST_PSEUDO_REGISTER
	  && REG_CANNOT_CHANGE_MODE_P (REGNO (sub), GET_MODE (sub), mode)
	  && GET_MODE_CLASS (GET_MODE (sub)) != MODE_COMPLEX_INT
	  && GET_MODE_CLASS (GET_MODE (sub)) != MODE_COMPLEX_FLOAT)
	return 0;
#endif

      /* FLOAT_MODE subregs can't be paradoxical.  Combine will occasionally
	 create such rtl, and we must reject it.  */
      if (FUNC9 (FUNC1 (op))
	  && FUNC3 (FUNC1 (op)) > FUNC3 (FUNC1 (sub)))
	return 0;

      op = sub;
    }

  /* We don't consider registers whose class is NO_REGS
     to be a register operand.  */
  return (FUNC8 (op)
	  && (FUNC5 (op) >= FIRST_PSEUDO_REGISTER
	      || FUNC6 (FUNC5 (op)) != NO_REGS));
}