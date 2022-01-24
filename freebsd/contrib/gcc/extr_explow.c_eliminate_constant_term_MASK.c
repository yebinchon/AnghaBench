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
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ PLUS ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

rtx
FUNC5 (rtx x, rtx *constptr)
{
  rtx x0, x1;
  rtx tem;

  if (FUNC0 (x) != PLUS)
    return x;

  /* First handle constants appearing at this level explicitly.  */
  if (FUNC0 (FUNC2 (x, 1)) == CONST_INT
      && 0 != (tem = FUNC4 (PLUS, FUNC1 (x), *constptr,
						FUNC2 (x, 1)))
      && FUNC0 (tem) == CONST_INT)
    {
      *constptr = tem;
      return FUNC5 (FUNC2 (x, 0), constptr);
    }

  tem = const0_rtx;
  x0 = FUNC5 (FUNC2 (x, 0), &tem);
  x1 = FUNC5 (FUNC2 (x, 1), &tem);
  if ((x1 != FUNC2 (x, 1) || x0 != FUNC2 (x, 0))
      && 0 != (tem = FUNC4 (PLUS, FUNC1 (x),
						*constptr, tem))
      && FUNC0 (tem) == CONST_INT)
    {
      *constptr = tem;
      return FUNC3 (FUNC1 (x), x0, x1);
    }

  return x;
}