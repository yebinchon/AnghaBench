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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ MODE_INT ; 
 scalar_t__ MODE_PARTIAL_INT ; 
 scalar_t__ NO_REGS ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ VOIDmode ; 
 int /*<<< orphan*/  flag_pic ; 
 int FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  reload_completed ; 
 scalar_t__ FUNC13 (scalar_t__,int) ; 

int
FUNC14 (rtx op, enum machine_mode mode)
{
  if (FUNC0 (op))
    {
      /* Don't accept CONST_INT or anything similar
	 if the caller wants something floating.  */
      if (FUNC2 (op) == VOIDmode && mode != VOIDmode
	  && FUNC3 (mode) != MODE_INT
	  && FUNC3 (mode) != MODE_PARTIAL_INT)
	return 0;

      if (FUNC1 (op) == CONST_INT
	  && mode != VOIDmode
	  && FUNC13 (FUNC4 (op), mode) != FUNC4 (op))
	return 0;

      return ((FUNC2 (op) == VOIDmode || FUNC2 (op) == mode
	       || mode == VOIDmode)
	      && (! flag_pic || FUNC6 (op))
	      && FUNC5 (op));
    }

  if (FUNC2 (op) != mode && mode != VOIDmode)
    return 0;

  if (FUNC1 (op) == SUBREG)
    {
      /* Before reload, we can allow (SUBREG (MEM...)) as a register operand
	 because it is guaranteed to be reloaded into one.
	 Just make sure the MEM is valid in itself.
	 (Ideally, (SUBREG (MEM)...) should not exist after reload,
	 but currently it does result from (SUBREG (REG)...) where the
	 reg went on the stack.)  */
      if (! reload_completed && FUNC7 (FUNC11 (op)))
	return FUNC12 (op, mode);
      op = FUNC11 (op);
    }

  /* We don't consider registers whose class is NO_REGS
     to be a register operand.  */
  return (FUNC10 (op)
	  && (FUNC8 (op) >= FIRST_PSEUDO_REGISTER
	      || FUNC9 (FUNC8 (op)) != NO_REGS));
}