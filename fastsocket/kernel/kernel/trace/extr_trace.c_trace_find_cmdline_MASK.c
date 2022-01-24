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
 unsigned int NO_CMDLINE_MAP ; 
 int PID_MAX_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int* map_pid_to_cmdline ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char** saved_cmdlines ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  trace_cmdline_lock ; 

void FUNC5(int pid, char comm[])
{
	unsigned map;

	if (!pid) {
		FUNC4(comm, "<idle>");
		return;
	}

	if (pid > PID_MAX_DEFAULT) {
		FUNC4(comm, "<...>");
		return;
	}

	FUNC2();
	FUNC0(&trace_cmdline_lock);
	map = map_pid_to_cmdline[pid];
	if (map != NO_CMDLINE_MAP)
		FUNC4(comm, saved_cmdlines[map]);
	else
		FUNC4(comm, "<...>");

	FUNC1(&trace_cmdline_lock);
	FUNC3();
}