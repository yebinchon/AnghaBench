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
 int /*<<< orphan*/  ccp_jump ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 

void
FUNC8 (rtx x, rtx y, enum rtx_code comparison, rtx size,
			 enum machine_mode mode, int unsignedp, rtx label)
{
  rtx op0 = x, op1 = y;

  /* Swap operands and condition to ensure canonical RTL.  */
  if (FUNC5 (x, y))
    {
      /* If we're not emitting a branch, this means some caller
         is out of sync.  */
      FUNC3 (label);

      op0 = y, op1 = x;
      comparison = FUNC6 (comparison);
    }

#ifdef HAVE_cc0
  /* If OP0 is still a constant, then both X and Y must be constants.
     Force X into a register to create canonical RTL.  */
  if (CONSTANT_P (op0))
    op0 = force_reg (mode, op0);
#endif

  if (unsignedp)
    comparison = FUNC7 (comparison);

  FUNC4 (&op0, &op1, &comparison, size, &mode, &unsignedp,
		    ccp_jump);
  FUNC1 (op0, op1, mode, comparison, unsignedp, label);
}