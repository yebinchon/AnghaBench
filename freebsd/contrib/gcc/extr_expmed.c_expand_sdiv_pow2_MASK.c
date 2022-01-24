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
typedef  int /*<<< orphan*/  tree ;
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int BRANCH_COST ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  GE ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  LT ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  OPTAB_LIB_WIDEN ; 
 int /*<<< orphan*/  RSHIFT_EXPR ; 
 int /*<<< orphan*/  add_optab ; 
 int /*<<< orphan*/  and_optab ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  const0_rtx ; 
 scalar_t__ FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int) ; 
 scalar_t__ FUNC16 (int,scalar_t__) ; 
 scalar_t__ FUNC17 () ; 
 scalar_t__ FUNC18 (int) ; 
 scalar_t__ FUNC19 () ; 
 scalar_t__** shift_cost ; 
 int /*<<< orphan*/  FUNC20 () ; 

__attribute__((used)) static rtx
FUNC21 (enum machine_mode mode, rtx op0, HOST_WIDE_INT d)
{
  rtx temp, label;
  tree shift;
  int logd;

  logd = FUNC15 (d);
  shift = FUNC3 (NULL_TREE, logd);

  if (d == 2 && BRANCH_COST >= 1)
    {
      temp = FUNC18 (mode);
      temp = FUNC10 (temp, LT, op0, const0_rtx, mode, 0, 1);
      temp = FUNC12 (mode, add_optab, temp, op0, NULL_RTX,
			   0, OPTAB_LIB_WIDEN);
      return FUNC14 (RSHIFT_EXPR, mode, temp, shift, NULL_RTX, 0);
    }

#ifdef HAVE_conditional_move
  if (BRANCH_COST >= 2)
    {
      rtx temp2;

      /* ??? emit_conditional_move forces a stack adjustment via
	 compare_from_rtx so, if the sequence is discarded, it will
	 be lost.  Do it now instead.  */
      do_pending_stack_adjust ();

      start_sequence ();
      temp2 = copy_to_mode_reg (mode, op0);
      temp = expand_binop (mode, add_optab, temp2, GEN_INT (d-1),
			   NULL_RTX, 0, OPTAB_LIB_WIDEN);
      temp = force_reg (mode, temp);

      /* Construct "temp2 = (temp2 < 0) ? temp : temp2".  */
      temp2 = emit_conditional_move (temp2, LT, temp2, const0_rtx,
				     mode, temp, temp2, mode, 0);
      if (temp2)
	{
	  rtx seq = get_insns ();
	  end_sequence ();
	  emit_insn (seq);
	  return expand_shift (RSHIFT_EXPR, mode, temp2, shift, NULL_RTX, 0);
	}
      end_sequence ();
    }
#endif

  if (BRANCH_COST >= 2)
    {
      int ushift = FUNC2 (mode) - logd;

      temp = FUNC18 (mode);
      temp = FUNC10 (temp, LT, op0, const0_rtx, mode, 0, -1);
      if (shift_cost[mode][ushift] > FUNC0 (1))
	temp = FUNC12 (mode, and_optab, temp, FUNC1 (d - 1),
			     NULL_RTX, 0, OPTAB_LIB_WIDEN);
      else
	temp = FUNC14 (RSHIFT_EXPR, mode, temp,
			     FUNC3 (NULL_TREE, ushift),
			     NULL_RTX, 1);
      temp = FUNC12 (mode, add_optab, temp, op0, NULL_RTX,
			   0, OPTAB_LIB_WIDEN);
      return FUNC14 (RSHIFT_EXPR, mode, temp, shift, NULL_RTX, 0);
    }

  label = FUNC17 ();
  temp = FUNC4 (mode, op0);
  FUNC5 (temp, const0_rtx, GE, mode, label);
  FUNC13 (temp, FUNC1 (d - 1));
  FUNC9 (label);
  return FUNC14 (RSHIFT_EXPR, mode, temp, shift, NULL_RTX, 0);
}