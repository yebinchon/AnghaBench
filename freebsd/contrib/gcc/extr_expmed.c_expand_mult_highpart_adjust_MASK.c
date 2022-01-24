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
 scalar_t__ FUNC0 (int) ; 
 int MINUS ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int PLUS ; 
 int /*<<< orphan*/  RSHIFT_EXPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

rtx
FUNC6 (enum machine_mode mode, rtx adj_operand, rtx op0,
			     rtx op1, rtx target, int unsignedp)
{
  rtx tem;
  enum rtx_code adj_code = unsignedp ? PLUS : MINUS;

  tem = FUNC3 (RSHIFT_EXPR, mode, op0,
		      FUNC1 (NULL_TREE, FUNC0 (mode) - 1),
		      NULL_RTX, 0);
  tem = FUNC2 (mode, tem, op1, NULL_RTX);
  adj_operand
    = FUNC4 (FUNC5 (adj_code, mode, adj_operand, tem),
		     adj_operand);

  tem = FUNC3 (RSHIFT_EXPR, mode, op1,
		      FUNC1 (NULL_TREE, FUNC0 (mode) - 1),
		      NULL_RTX, 0);
  tem = FUNC2 (mode, tem, op0, NULL_RTX);
  target = FUNC4 (FUNC5 (adj_code, mode, adj_operand, tem),
			  target);

  return target;
}