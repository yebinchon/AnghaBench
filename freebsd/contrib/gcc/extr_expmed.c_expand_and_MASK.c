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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  AND ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  OPTAB_LIB_WIDEN ; 
 scalar_t__ VOIDmode ; 
 int /*<<< orphan*/  and_optab ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 

rtx
FUNC4 (enum machine_mode mode, rtx op0, rtx op1, rtx target)
{
  rtx tem = 0;

  if (FUNC0 (op0) == VOIDmode && FUNC0 (op1) == VOIDmode)
    tem = FUNC3 (AND, mode, op0, op1);
  if (tem == 0)
    tem = FUNC2 (mode, and_optab, op0, op1, target, 0, OPTAB_LIB_WIDEN);

  if (target == 0)
    target = tem;
  else if (tem != target)
    FUNC1 (target, tem);
  return target;
}