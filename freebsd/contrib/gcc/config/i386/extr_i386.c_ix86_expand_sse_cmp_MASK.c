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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ optimize ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC8 (rtx dest, enum rtx_code code, rtx cmp_op0, rtx cmp_op1,
		     rtx op_true, rtx op_false)
{
  enum machine_mode mode = FUNC0 (dest);
  rtx x;

  cmp_op0 = FUNC2 (mode, cmp_op0);
  if (!FUNC6 (cmp_op1, mode))
    cmp_op1 = FUNC2 (mode, cmp_op1);

  if (optimize
      || FUNC7 (dest, op_true)
      || FUNC7 (dest, op_false))
    dest = FUNC3 (mode);

  x = FUNC5 (code, mode, cmp_op0, cmp_op1);
  FUNC1 (FUNC4 (VOIDmode, dest, x));

  return dest;
}