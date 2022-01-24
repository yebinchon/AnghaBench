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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int MEM ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ MODE_INT ; 
 scalar_t__ MODE_PARTIAL_INT ; 
 scalar_t__ NO_REGS ; 
 int REG ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (int) ; 
 int SUBREG ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag_pic ; 
 scalar_t__ FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reload_completed ; 
 scalar_t__ FUNC17 (scalar_t__,int) ; 
 int /*<<< orphan*/  volatile_ok ; 

int
FUNC18 (rtx op, enum machine_mode mode)
{
  enum rtx_code code = FUNC1 (op);

  if (mode == VOIDmode)
    mode = FUNC2 (op);

  /* Don't accept CONST_INT or anything similar
     if the caller wants something floating.  */
  if (FUNC2 (op) == VOIDmode && mode != VOIDmode
      && FUNC3 (mode) != MODE_INT
      && FUNC3 (mode) != MODE_PARTIAL_INT)
    return 0;

  if (FUNC1 (op) == CONST_INT
      && mode != VOIDmode
      && FUNC17 (FUNC5 (op), mode) != FUNC5 (op))
    return 0;

  if (FUNC0 (op))
    return ((FUNC2 (op) == VOIDmode || FUNC2 (op) == mode
	     || mode == VOIDmode)
	    && (! flag_pic || FUNC7 (op))
	    && FUNC6 (op));

  /* Except for certain constants with VOIDmode, already checked for,
     OP's mode must match MODE if MODE specifies a mode.  */

  if (FUNC2 (op) != mode)
    return 0;

  if (code == SUBREG)
    {
      rtx sub = FUNC14 (op);

#ifdef INSN_SCHEDULING
      /* On machines that have insn scheduling, we want all memory
	 reference to be explicit, so outlaw paradoxical SUBREGs.
	 However, we must allow them after reload so that they can
	 get cleaned up by cleanup_subreg_operands.  */
      if (!reload_completed && MEM_P (sub)
	  && GET_MODE_SIZE (mode) > GET_MODE_SIZE (GET_MODE (sub)))
	return 0;
#endif
      /* Avoid memories with nonzero SUBREG_BYTE, as offsetting the memory
         may result in incorrect reference.  We should simplify all valid
         subregs of MEM anyway.  But allow this after reload because we
	 might be called from cleanup_subreg_operands.

	 ??? This is a kludge.  */
      if (!reload_completed && FUNC13 (op) != 0
	  && FUNC8 (sub))
	return 0;

      /* FLOAT_MODE subregs can't be paradoxical.  Combine will occasionally
	 create such rtl, and we must reject it.  */
      if (FUNC12 (FUNC2 (op))
	  && FUNC4 (FUNC2 (op)) > FUNC4 (FUNC2 (sub)))
	return 0;

      op = sub;
      code = FUNC1 (op);
    }

  if (code == REG)
    /* A register whose class is NO_REGS is not a general operand.  */
    return (FUNC10 (op) >= FIRST_PSEUDO_REGISTER
	    || FUNC11 (FUNC10 (op)) != NO_REGS);

  if (code == MEM)
    {
      rtx y = FUNC15 (op, 0);

      if (! volatile_ok && FUNC9 (op))
	return 0;

      /* Use the mem's mode, since it will be reloaded thus.  */
      if (FUNC16 (FUNC2 (op), y))
	return 1;
    }

  return 0;
}