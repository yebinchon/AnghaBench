#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_4__ {TYPE_1__* handlers; } ;
struct TYPE_3__ {int /*<<< orphan*/  libfunc; } ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  INTEGER_TYPE ; 
 int /*<<< orphan*/  INT_TYPE_SIZE ; 
 int /*<<< orphan*/  LCT_CONST_MAKE_BLOCK ; 
 int /*<<< orphan*/  MODE_INT ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ POWI_MAX_MULTS ; 
 int /*<<< orphan*/  REAL_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optimize_size ; 
 scalar_t__ FUNC17 (int) ; 
 TYPE_2__* powi_optab ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC19 (tree exp, rtx target, rtx subtarget)
{
  tree arglist = FUNC6 (exp, 1);
  tree arg0, arg1;
  rtx op0, op1;
  enum machine_mode mode;
  enum machine_mode mode2;

  if (! FUNC18 (arglist, REAL_TYPE, INTEGER_TYPE, VOID_TYPE))
    return 0;

  arg0 = FUNC8 (arglist);
  arg1 = FUNC8 (FUNC1 (arglist));
  mode = FUNC9 (FUNC7 (exp));

  /* Handle constant power.  */

  if (FUNC2 (arg1) == INTEGER_CST
      && ! FUNC3 (arg1))
    {
      HOST_WIDE_INT n = FUNC5 (arg1);

      /* If the exponent is -1, 0, 1 or 2, then expand_powi is exact.
	 Otherwise, check the number of multiplications required.  */
      if ((FUNC4 (arg1) == 0
	   || FUNC4 (arg1) == -1)
	  && ((n >= -1 && n <= 2)
	      || (! optimize_size
		  && FUNC17 (n) <= POWI_MAX_MULTS)))
	{
	  op0 = FUNC12 (arg0, subtarget, VOIDmode, 0);
	  op0 = FUNC14 (mode, op0);
	  return FUNC13 (op0, mode, n);
	}
    }

  /* Emit a libcall to libgcc.  */

  /* Mode of the 2nd argument must match that of an int. */
  mode2 = FUNC16 (INT_TYPE_SIZE, MODE_INT, 0);

  if (target == NULL_RTX)
    target = FUNC15 (mode);

  op0 = FUNC12 (arg0, subtarget, mode, 0);
  if (FUNC0 (op0) != mode)
    op0 = FUNC10 (mode, op0, 0);
  op1 = FUNC12 (arg1, 0, mode2, 0);
  if (FUNC0 (op1) != mode2)
    op1 = FUNC10 (mode2, op1, 0);

  target = FUNC11 (powi_optab->handlers[(int) mode].libfunc,
				    target, LCT_CONST_MAKE_BLOCK, mode, 2,
				    op0, mode, op1, mode2);

  return target;
}