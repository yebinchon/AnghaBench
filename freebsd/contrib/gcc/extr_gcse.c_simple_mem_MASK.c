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
 scalar_t__ BLKmode ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ flag_float_store ; 
 scalar_t__ flag_non_call_exceptions ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 

__attribute__((used)) static int
FUNC7 (rtx x)
{
  if (! FUNC2 (x))
    return 0;

  if (FUNC3 (x))
    return 0;

  if (FUNC1 (x) == BLKmode)
    return 0;

  /* If we are handling exceptions, we must be careful with memory references
     that may trap. If we are not, the behavior is undefined, so we may just
     continue.  */
  if (flag_non_call_exceptions && FUNC4 (x))
    return 0;

  if (FUNC6 (x))
    return 0;

  /* Do not consider function arguments passed on stack.  */
  if (FUNC5 (stack_pointer_rtx, x))
    return 0;

  if (flag_float_store && FUNC0 (FUNC1 (x)))
    return 0;

  return 1;
}