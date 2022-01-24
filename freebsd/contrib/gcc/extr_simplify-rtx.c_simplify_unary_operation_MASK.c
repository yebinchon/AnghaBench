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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ CONST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int,int,scalar_t__,int) ; 
 scalar_t__ FUNC4 (int,int,scalar_t__) ; 

rtx
FUNC5 (enum rtx_code code, enum machine_mode mode,
			  rtx op, enum machine_mode op_mode)
{
  rtx trueop, tem;

  if (FUNC0 (op) == CONST)
    op = FUNC1 (op, 0);

  trueop = FUNC2 (op);

  tem = FUNC3 (code, mode, trueop, op_mode);
  if (tem)
    return tem;

  return FUNC4 (code, mode, op);
}