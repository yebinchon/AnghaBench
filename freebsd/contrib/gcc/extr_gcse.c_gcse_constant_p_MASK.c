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

/* Variables and functions */
 scalar_t__ COMPARE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONST_INT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC7 (rtx x)
{
  /* Consider a COMPARE of two integers constant.  */
  if (FUNC2 (x) == COMPARE
      && FUNC2 (FUNC6 (x, 0)) == CONST_INT
      && FUNC2 (FUNC6 (x, 1)) == CONST_INT)
    return true;

  /* Consider a COMPARE of the same registers is a constant
     if they are not floating point registers.  */
  if (FUNC2(x) == COMPARE
      && FUNC5 (FUNC6 (x, 0)) && FUNC5 (FUNC6 (x, 1))
      && FUNC4 (FUNC6 (x, 0)) == FUNC4 (FUNC6 (x, 1))
      && ! FUNC1 (FUNC3 (FUNC6 (x, 0)))
      && ! FUNC1 (FUNC3 (FUNC6 (x, 1))))
    return true;

  return FUNC0 (x);
}