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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  OPTAB_DIRECT ; 
 int /*<<< orphan*/  PLUS ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,scalar_t__) ; 
 scalar_t__ stack_pointer_rtx ; 

void
FUNC5 (enum machine_mode mode, rtx x)
{
  rtx tmp;

  tmp = FUNC3 (Pmode, PLUS, stack_pointer_rtx,
			     FUNC0 (-FUNC1 (mode)),
			     stack_pointer_rtx, 1, OPTAB_DIRECT);
  if (tmp != stack_pointer_rtx)
    FUNC2 (stack_pointer_rtx, tmp);

  tmp = FUNC4 (mode, stack_pointer_rtx);
  FUNC2 (tmp, x);
}