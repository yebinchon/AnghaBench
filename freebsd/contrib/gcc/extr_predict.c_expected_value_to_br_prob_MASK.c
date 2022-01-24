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

/* Variables and functions */
#define  CODE_LABEL 130 
 int CONST_INT ; 
 int FUNC0 (scalar_t__) ; 
#define  JUMP_INSN 129 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
#define  NOTE 128 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  NOTE_INSN_EXPECTED_VALUE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  NOT_TAKEN ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  PRED_BUILTIN_EXPECT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAKEN ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ const_true_rtx ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 

void
FUNC17 (void)
{
  rtx insn, cond, ev = NULL_RTX, ev_reg = NULL_RTX;

  for (insn = FUNC12 (); insn ; insn = FUNC2 (insn))
    {
      switch (FUNC0 (insn))
	{
	case NOTE:
	  /* Look for expected value notes.  */
	  if (FUNC4 (insn) == NOTE_INSN_EXPECTED_VALUE)
	    {
	      ev = FUNC3 (insn);
	      ev_reg = FUNC6 (ev, 0);
	      FUNC9 (insn);
	    }
	  continue;

	case CODE_LABEL:
	  /* Never propagate across labels.  */
	  ev = NULL_RTX;
	  continue;

	case JUMP_INSN:
	  /* Look for simple conditional branches.  If we haven't got an
	     expected value yet, no point going further.  */
	  if (!FUNC1 (insn) || ev == NULL_RTX
	      || ! FUNC7 (insn))
	    continue;
	  break;

	default:
	  /* Look for insns that clobber the EV register.  */
	  if (ev && FUNC15 (ev_reg, insn))
	    ev = NULL_RTX;
	  continue;
	}

      /* Collect the branch condition, hopefully relative to EV_REG.  */
      /* ???  At present we'll miss things like
		(expected_value (eq r70 0))
		(set r71 -1)
		(set r80 (lt r70 r71))
		(set pc (if_then_else (ne r80 0) ...))
	 as canonicalize_condition will render this to us as
		(lt r70, r71)
	 Could use cselib to try and reduce this further.  */
      cond = FUNC6 (FUNC5 (FUNC13 (insn)), 0);
      cond = FUNC8 (insn, cond, 0, NULL, ev_reg,
				     false, false);
      if (! cond || FUNC6 (cond, 0) != ev_reg
	  || FUNC0 (FUNC6 (cond, 1)) != CONST_INT)
	continue;

      /* Substitute and simplify.  Given that the expression we're
	 building involves two constants, we should wind up with either
	 true or false.  */
      cond = FUNC11 (FUNC0 (cond), VOIDmode,
			     FUNC6 (ev, 1), FUNC6 (cond, 1));
      cond = FUNC16 (cond);

      /* Turn the condition into a scaled branch probability.  */
      FUNC10 (cond == const_true_rtx || cond == const0_rtx);
      FUNC14 (insn, PRED_BUILTIN_EXPECT,
		        cond == const_true_rtx ? TAKEN : NOT_TAKEN);
    }
}