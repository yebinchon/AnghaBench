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
 scalar_t__ CCmode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SImode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rs6000_compare_op0 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7 (rtx dest, rtx op, rtx true_cond, rtx false_cond)
{
  rtx condition_rtx, cr;

  /* All isel implementations thus far are 32-bits.  */
  if (FUNC1 (rs6000_compare_op0) != SImode)
    return 0;

  /* We still have to do the compare, because isel doesn't do a
     compare, it just looks at the CRx bits set by a previous compare
     instruction.  */
  condition_rtx = FUNC6 (FUNC0 (op));
  cr = FUNC2 (condition_rtx, 0);

  if (FUNC1 (cr) == CCmode)
    FUNC3 (FUNC4 (dest, condition_rtx,
				true_cond, false_cond, cr));
  else
    FUNC3 (FUNC5 (dest, condition_rtx,
				  true_cond, false_cond, cr));

  return 1;
}