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
struct kinfo_proc {scalar_t__ ki_pid; } ;

/* Variables and functions */
 int EOF ; 
 scalar_t__ ESRCH ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 scalar_t__ interactive ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct kinfo_proc const*) ; 
 int /*<<< orphan*/  signum ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static int
FUNC6(const struct kinfo_proc *kp)
{
	int ch, first;

	if (interactive) {
		/*
		 * Be careful, ask before killing.
		 */
		FUNC3("kill ");
		FUNC4(kp);
		FUNC3("? ");
		FUNC0(stdout);
		first = ch = FUNC1();
		while (ch != '\n' && ch != EOF)
			ch = FUNC1();
		if (first != 'y' && first != 'Y')
			return (1);
	}
	if (FUNC2(kp->ki_pid, signum) == -1) {
		/* 
		 * Check for ESRCH, which indicates that the process
		 * disappeared between us matching it and us
		 * signalling it; don't issue a warning about it.
		 */
		if (errno != ESRCH)
			FUNC5("signalling pid %d", (int)kp->ki_pid);
		/*
		 * Return 0 to indicate that the process should not be
		 * considered a match, since we didn't actually get to
		 * signal it.
		 */
		return (0);
	}
	return (1);
}