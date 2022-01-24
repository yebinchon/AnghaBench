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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int NE ; 
 int QImode ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ TARGET_SSE_MATH ; 
 int UNKNOWN ; 
 int VOIDmode ; 
 scalar_t__ const0_rtx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ ix86_compare_op0 ; 
 scalar_t__ ix86_compare_op1 ; 
 scalar_t__ FUNC10 (int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC15 (scalar_t__,int,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 

int
FUNC17 (rtx operands[])
{
  enum machine_mode mode = FUNC1 (operands[0]);
  enum rtx_code code = FUNC0 (operands[1]);
  rtx tmp, compare_op, second_test, bypass_test;

  if (TARGET_SSE_MATH && FUNC2 (mode))
    {
      enum machine_mode cmode;

      /* Since we've no cmove for sse registers, don't force bad register
	 allocation just to gain access to it.  Deny movcc when the
	 comparison mode doesn't match the move mode.  */
      cmode = FUNC1 (ix86_compare_op0);
      if (cmode == VOIDmode)
	cmode = FUNC1 (ix86_compare_op1);
      if (cmode != mode)
	return 0;

      code = FUNC15 (operands[0], code,
					       &ix86_compare_op0,
					       &ix86_compare_op1);
      if (code == UNKNOWN)
	return 0;

      if (FUNC13 (operands[0], code, ix86_compare_op0,
				     ix86_compare_op1, operands[2],
				     operands[3]))
	return 1;

      tmp = FUNC12 (operands[0], code, ix86_compare_op0,
				 ix86_compare_op1, operands[2], operands[3]);
      FUNC14 (operands[0], tmp, operands[2], operands[3]);
      return 1;
    }

  /* The floating point conditional move instructions don't directly
     support conditions resulting from a signed integer comparison.  */

  compare_op = FUNC10 (code, &second_test, &bypass_test);

  /* The floating point conditional move instructions don't directly
     support signed integer comparisons.  */

  if (!FUNC5 (compare_op, VOIDmode))
    {
      FUNC6 (!second_test && !bypass_test);
      tmp = FUNC7 (QImode);
      FUNC11 (code, tmp);
      code = NE;
      ix86_compare_op0 = tmp;
      ix86_compare_op1 = const0_rtx;
      compare_op = FUNC10 (code,  &second_test, &bypass_test);
    }
  if (bypass_test && FUNC16 (operands[0], operands[3]))
    {
      tmp = FUNC7 (mode);
      FUNC4 (tmp, operands[3]);
      operands[3] = tmp;
    }
  if (second_test && FUNC16 (operands[0], operands[2]))
    {
      tmp = FUNC7 (mode);
      FUNC4 (tmp, operands[2]);
      operands[2] = tmp;
    }

  FUNC3 (FUNC9 (VOIDmode, operands[0],
			  FUNC8 (mode, compare_op,
						operands[2], operands[3])));
  if (bypass_test)
    FUNC3 (FUNC9 (VOIDmode, operands[0],
			    FUNC8 (mode, bypass_test,
						  operands[3], operands[0])));
  if (second_test)
    FUNC3 (FUNC9 (VOIDmode, operands[0],
			    FUNC8 (mode, second_test,
						  operands[2], operands[0])));

  return 1;
}