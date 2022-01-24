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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ POWI_MAX_MULTS ; 
 scalar_t__ REAL_CST ; 
 int /*<<< orphan*/  REAL_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ flag_unsafe_math_optimizations ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optimize_size ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC17 (tree exp, rtx target, rtx subtarget)
{
  tree arglist = FUNC3 (exp, 1);
  tree arg0, arg1;

  if (! FUNC16 (arglist, REAL_TYPE, REAL_TYPE, VOID_TYPE))
    return 0;

  arg0 = FUNC6 (arglist);
  arg1 = FUNC6 (FUNC0 (arglist));

  if (FUNC1 (arg1) == REAL_CST
      && ! FUNC2 (arg1))
    {
      REAL_VALUE_TYPE cint;
      REAL_VALUE_TYPE c;
      HOST_WIDE_INT n;

      c = FUNC4 (arg1);
      n = FUNC15 (&c);
      FUNC13 (&cint, VOIDmode, n, n < 0 ? -1 : 0, 0);
      if (FUNC14 (&c, &cint))
	{
	  /* If the exponent is -1, 0, 1 or 2, then expand_powi is exact.
	     Otherwise, check the number of multiplications required.
	     Note that pow never sets errno for an integer exponent.  */
	  if ((n >= -1 && n <= 2)
	      || (flag_unsafe_math_optimizations
		  && ! optimize_size
		  && FUNC12 (n) <= POWI_MAX_MULTS))
	    {
	      enum machine_mode mode = FUNC7 (FUNC5 (exp));
	      rtx op = FUNC9 (arg0, subtarget, VOIDmode, 0);
	      op = FUNC11 (mode, op);
	      return FUNC10 (op, mode, n);
	    }
	}
    }

  if (! flag_unsafe_math_optimizations)
    return NULL_RTX;
  return FUNC8 (exp, target, subtarget);
}