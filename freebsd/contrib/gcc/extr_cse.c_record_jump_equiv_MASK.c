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
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ MODE_CC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int UNKNOWN ; 
 int VOIDmode ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ pc_rtx ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (rtx insn, int taken)
{
  int cond_known_true;
  rtx op0, op1;
  rtx set;
  enum machine_mode mode, mode0, mode1;
  int reversed_nonequality = 0;
  enum rtx_code code;

  /* Ensure this is the right kind of insn.  */
  if (! FUNC4 (insn))
    return;
  set = FUNC7 (insn);

  /* See if this jump condition is known true or false.  */
  if (taken)
    cond_known_true = (FUNC3 (FUNC2 (set), 2) == pc_rtx);
  else
    cond_known_true = (FUNC3 (FUNC2 (set), 1) == pc_rtx);

  /* Get the type of comparison being done and the operands being compared.
     If we had to reverse a non-equality condition, record that fact so we
     know that it isn't valid for floating-point.  */
  code = FUNC0 (FUNC3 (FUNC2 (set), 0));
  op0 = FUNC6 (FUNC3 (FUNC3 (FUNC2 (set), 0), 0), insn);
  op1 = FUNC6 (FUNC3 (FUNC3 (FUNC2 (set), 0), 1), insn);

  code = FUNC5 (code, &op0, &op1, &mode0, &mode1);

  /* If the mode is a MODE_CC mode, we don't know what kinds of things
     are being compared, so we can't do anything with this
     comparison.  */

  if (FUNC1 (mode0) == MODE_CC)
    return;

  if (! cond_known_true)
    {
      code = FUNC9 (code, op0, op1, insn);

      /* Don't remember if we can't find the inverse.  */
      if (code == UNKNOWN)
	return;
    }

  /* The mode is the mode of the non-constant.  */
  mode = mode0;
  if (mode1 != VOIDmode)
    mode = mode1;

  FUNC8 (code, mode, op0, op1, reversed_nonequality);
}