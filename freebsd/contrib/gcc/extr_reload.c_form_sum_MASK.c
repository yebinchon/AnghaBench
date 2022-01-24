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
 scalar_t__ CONST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ PLUS ; 
 int Pmode ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

rtx
FUNC8 (rtx x, rtx y)
{
  rtx tem;
  enum machine_mode mode = FUNC2 (x);

  if (mode == VOIDmode)
    mode = FUNC2 (y);

  if (mode == VOIDmode)
    mode = Pmode;

  if (FUNC1 (x) == CONST_INT)
    return FUNC7 (y, FUNC3 (x));
  else if (FUNC1 (y) == CONST_INT)
    return FUNC7 (x, FUNC3 (y));
  else if (FUNC0 (x))
    tem = x, x = y, y = tem;

  if (FUNC1 (x) == PLUS && FUNC0 (FUNC4 (x, 1)))
    return FUNC8 (FUNC4 (x, 0), FUNC8 (FUNC4 (x, 1), y));

  /* Note that if the operands of Y are specified in the opposite
     order in the recursive calls below, infinite recursion will occur.  */
  if (FUNC1 (y) == PLUS && FUNC0 (FUNC4 (y, 1)))
    return FUNC8 (FUNC8 (x, FUNC4 (y, 0)), FUNC4 (y, 1));

  /* If both constant, encapsulate sum.  Otherwise, just form sum.  A
     constant will have been placed second.  */
  if (FUNC0 (x) && FUNC0 (y))
    {
      if (FUNC1 (x) == CONST)
	x = FUNC4 (x, 0);
      if (FUNC1 (y) == CONST)
	y = FUNC4 (y, 0);

      return FUNC5 (VOIDmode, FUNC6 (mode, x, y));
    }

  return FUNC6 (mode, x, y);
}