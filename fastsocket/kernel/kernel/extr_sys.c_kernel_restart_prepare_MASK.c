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
 int /*<<< orphan*/  SYSTEM_RESTART ; 
 int /*<<< orphan*/  SYS_RESTART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  reboot_notifier_list ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  system_state ; 

void FUNC3(char *cmd)
{
	FUNC0(&reboot_notifier_list, SYS_RESTART, cmd);
	system_state = SYSTEM_RESTART;
	FUNC1();
	FUNC2();
}