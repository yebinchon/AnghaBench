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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool
FUNC3 (rtx target, rtx op0, rtx op1)
{
  int op0_prec = FUNC1 (op0);
  int op1_prec = FUNC1 (op1);

  if (op0_prec < op1_prec)
    return true;

  if (op0_prec > op1_prec)
    return false;

  /* With equal precedence, both orders are ok, but it is better if the
     first operand is TARGET, or if both TARGET and OP0 are pseudos.  */
  if (target == 0 || FUNC0 (target))
    return (FUNC0 (op1) && !FUNC0 (op0)) || target == op1;
  else
    return FUNC2 (op1, target);
}