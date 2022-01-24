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

/* Variables and functions */
 scalar_t__ pending_stack_adjust ; 
 int /*<<< orphan*/  stack_pointer_delta ; 

void
FUNC0 (void)
{
  stack_pointer_delta -= pending_stack_adjust;
  pending_stack_adjust = 0;
}