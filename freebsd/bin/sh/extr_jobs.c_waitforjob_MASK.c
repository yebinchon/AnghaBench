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
struct job {scalar_t__ state; scalar_t__ jobctl; scalar_t__ foreground; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLEAR_PENDING_INT ; 
 int DOWAIT_BLOCK ; 
 int DOWAIT_SIG ; 
 int DOWAIT_SIG_TRAP ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 scalar_t__ JOBDONE ; 
 int /*<<< orphan*/  JOBS ; 
 scalar_t__ JOBSTOPPED ; 
 int SIGINT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ Tflag ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int,struct job*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct job*) ; 
 int FUNC11 (struct job*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 struct job* jobtab ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rootpid ; 
 scalar_t__ rootshell ; 
 int /*<<< orphan*/  FUNC15 (struct job*) ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ ttyfd ; 

int
FUNC17(struct job *jp, int *signaled)
{
#if JOBS
	int propagate_int = jp->jobctl && jp->foreground;
#endif
	int status;
	int st;

	INTOFF;
	FUNC0(("waitforjob(%%%td) called\n", jp - jobtab + 1));
	while (jp->state == 0)
		if (FUNC8(DOWAIT_BLOCK | (Tflag ? DOWAIT_SIG |
		    DOWAIT_SIG_TRAP : 0), jp) == -1)
			FUNC7();
#if JOBS
	if (jp->jobctl) {
		if (ttyfd >= 0 && tcsetpgrp(ttyfd, rootpid) < 0)
			error("tcsetpgrp failed, errno=%d\n", errno);
	}
	if (jp->state == JOBSTOPPED)
		setcurjob(jp);
#endif
	status = FUNC11(jp);
	if (signaled != NULL)
		*signaled = FUNC3(status);
	/* convert to 8 bits */
	if (FUNC2(status))
		st = FUNC1(status);
#if JOBS
	else if (WIFSTOPPED(status))
		st = WSTOPSIG(status) + 128;
#endif
	else
		st = FUNC6(status) + 128;
	if (! JOBS || jp->state == JOBDONE)
		FUNC10(jp);
	if (FUNC13()) {
		if (!FUNC3(status) || FUNC6(status) != SIGINT)
			CLEAR_PENDING_INT;
	}
#if JOBS
	else if (rootshell && propagate_int &&
			WIFSIGNALED(status) && WTERMSIG(status) == SIGINT)
		kill(getpid(), SIGINT);
#endif
	INTON;
	return st;
}