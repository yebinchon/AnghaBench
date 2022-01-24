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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int console_locked ; 
 int console_may_schedule ; 
 int /*<<< orphan*/  console_sem ; 
 scalar_t__ console_suspended ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(void)
{
	FUNC0(FUNC2());
	FUNC1(&console_sem);
	if (console_suspended)
		return;
	console_locked = 1;
	console_may_schedule = 1;
}