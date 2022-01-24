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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int ERR_RUN_COMMAND_EXEC ; 
 int ERR_RUN_COMMAND_WAITPID ; 
 int ERR_RUN_COMMAND_WAITPID_NOEXIT ; 
 int ERR_RUN_COMMAND_WAITPID_SIGNAL ; 
 int ERR_RUN_COMMAND_WAITPID_WRONG_PID ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(pid_t pid)
{
	for (;;) {
		int status, code;
		pid_t waiting = FUNC5(pid, &status, 0);

		if (waiting < 0) {
			if (errno == EINTR)
				continue;
			FUNC3("waitpid failed (%s)", FUNC4(errno));
			return -ERR_RUN_COMMAND_WAITPID;
		}
		if (waiting != pid)
			return -ERR_RUN_COMMAND_WAITPID_WRONG_PID;
		if (FUNC2(status))
			return -ERR_RUN_COMMAND_WAITPID_SIGNAL;

		if (!FUNC1(status))
			return -ERR_RUN_COMMAND_WAITPID_NOEXIT;
		code = FUNC0(status);
		switch (code) {
		case 127:
			return -ERR_RUN_COMMAND_EXEC;
		case 0:
			return 0;
		default:
			return -code;
		}
	}
}