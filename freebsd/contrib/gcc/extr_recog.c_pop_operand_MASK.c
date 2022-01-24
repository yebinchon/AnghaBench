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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ STACK_POP_CODE ; 
 int VOIDmode ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ stack_pointer_rtx ; 

int
FUNC4 (rtx op, enum machine_mode mode)
{
  if (!FUNC2 (op))
    return 0;

  if (mode != VOIDmode && FUNC1 (op) != mode)
    return 0;

  op = FUNC3 (op, 0);

  if (FUNC0 (op) != STACK_POP_CODE)
    return 0;

  return FUNC3 (op, 0) == stack_pointer_rtx;
}