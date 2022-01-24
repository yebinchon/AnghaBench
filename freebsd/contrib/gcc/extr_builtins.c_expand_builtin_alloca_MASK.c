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

/* Variables and functions */
 int /*<<< orphan*/  BITS_PER_UNIT ; 
 int /*<<< orphan*/  INTEGER_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ flag_mudflap ; 
 int /*<<< orphan*/  ptr_mode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC5 (tree arglist, rtx target)
{
  rtx op0;
  rtx result;

  /* In -fmudflap-instrumented code, alloca() and __builtin_alloca()
     should always expand to function calls.  These can be intercepted
     in libmudflap.  */
  if (flag_mudflap)
    return 0;

  if (!FUNC4 (arglist, INTEGER_TYPE, VOID_TYPE))
    return 0;

  /* Compute the argument.  */
  op0 = FUNC3 (FUNC0 (arglist));

  /* Allocate the desired space.  */
  result = FUNC1 (op0, target, BITS_PER_UNIT);
  result = FUNC2 (ptr_mode, result);

  return result;
}