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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  console_sem ; 
 int /*<<< orphan*/  console_suspend_enabled ; 
 int console_suspended ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	if (!console_suspend_enabled)
		return;
	FUNC1("Suspending console(s) (use no_console_suspend to debug)\n");
	FUNC0();
	console_suspended = 1;
	FUNC2(&console_sem);
}