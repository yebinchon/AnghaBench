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
struct kinfo_proc {char* ki_comm; scalar_t__ ki_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kd ; 
 char** FUNC1 (int /*<<< orphan*/ ,struct kinfo_proc const*,int /*<<< orphan*/ ) ; 
 scalar_t__ longfmt ; 
 scalar_t__ matchargs ; 
 int /*<<< orphan*/  pgrep ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 scalar_t__ quiet ; 

__attribute__((used)) static void
FUNC4(const struct kinfo_proc *kp)
{
	char **argv;

	if (quiet) {
		FUNC0(pgrep);
		return;
	}
	if ((longfmt || !pgrep) && matchargs &&
	    (argv = FUNC1(kd, kp, 0)) != NULL) {
		FUNC2("%d ", (int)kp->ki_pid);
		for (; *argv != NULL; argv++) {
			FUNC2("%s", *argv);
			if (argv[1] != NULL)
				FUNC3(' ');
		}
	} else if (longfmt || !pgrep)
		FUNC2("%d %s", (int)kp->ki_pid, kp->ki_comm);
	else
		FUNC2("%d", (int)kp->ki_pid);
}