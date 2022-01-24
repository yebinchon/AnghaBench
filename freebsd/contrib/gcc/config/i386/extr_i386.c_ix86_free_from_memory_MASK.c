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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int DImode ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ TARGET_64BIT ; 
 int /*<<< orphan*/  TARGET_RED_ZONE ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 

void
FUNC4 (enum machine_mode mode)
{
  if (!TARGET_RED_ZONE)
    {
      int size;

      if (mode == DImode || TARGET_64BIT)
	size = 8;
      else
	size = 4;
      /* Use LEA to deallocate stack space.  In peephole2 it will be converted
         to pop or add instruction if registers are available.  */
      FUNC1 (FUNC3 (VOIDmode, stack_pointer_rtx,
			      FUNC2 (Pmode, stack_pointer_rtx,
					    FUNC0 (size))));
    }
}