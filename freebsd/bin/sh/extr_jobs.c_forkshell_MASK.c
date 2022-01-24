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
typedef  union node {int dummy; } node ;
struct procstat {int pid; int status; int /*<<< orphan*/  cmd; } ;
struct job {scalar_t__ nprocs; scalar_t__ state; int foreground; struct procstat* ps; int /*<<< orphan*/  remembered; scalar_t__ used; } ;
typedef  int pid_t ;

/* Variables and functions */
 int FORK_BG ; 
 int FORK_FG ; 
 int FORK_NOJOB ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 scalar_t__ JOBDONE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIGTTOU ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int backgndpid ; 
 struct job* bgjob ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (union node*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ forcelocal ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct job*) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/ * handler ; 
 scalar_t__ iflag ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ jobctl ; 
 struct job* jobtab ; 
 int /*<<< orphan*/  main_handler ; 
 scalar_t__ mflag ; 
 int njobs ; 
 int /*<<< orphan*/  nullstr ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int rootshell ; 
 int /*<<< orphan*/  FUNC14 (struct job*) ; 
 scalar_t__ FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (scalar_t__,int) ; 
 scalar_t__ ttyfd ; 

pid_t
FUNC19(struct job *jp, union node *n, int mode)
{
	pid_t pid;
	pid_t pgrp;

	FUNC0(("forkshell(%%%td, %p, %d) called\n", jp - jobtab, (void )n,
	    mode));
	INTOFF;
	if (mode == FORK_BG && (jp == NULL || jp->nprocs == 0))
		FUNC1();
	FUNC8();
	pid = FUNC9();
	if (pid == -1) {
		FUNC0(("Fork failed, errno=%d\n", errno));
		INTON;
		FUNC6("Cannot fork: %s", FUNC17(errno));
	}
	if (pid == 0) {
		struct job *p;
		int wasroot;
		int i;

		FUNC0(("Child shell %d\n", (int)FUNC11()));
		wasroot = rootshell;
		rootshell = 0;
		handler = &main_handler;
		FUNC4();
		INTON;
		forcelocal = 0;
		FUNC2();
#if JOBS
		jobctl = 0;		/* do job control only in root shell */
		if (wasroot && mode != FORK_NOJOB && mflag) {
			if (jp == NULL || jp->nprocs == 0)
				pgrp = getpid();
			else
				pgrp = jp->ps[0].pid;
			if (setpgid(0, pgrp) == 0 && mode == FORK_FG &&
			    ttyfd >= 0) {
				/*** this causes superfluous TIOCSPGRPS ***/
				if (tcsetpgrp(ttyfd, pgrp) < 0)
					error("tcsetpgrp failed, errno=%d", errno);
			}
			setsignal(SIGTSTP);
			setsignal(SIGTTOU);
		} else if (mode == FORK_BG) {
			ignoresig(SIGINT);
			ignoresig(SIGQUIT);
			if ((jp == NULL || jp->nprocs == 0) &&
			    ! fd0_redirected_p ()) {
				close(0);
				if (open(_PATH_DEVNULL, O_RDONLY) != 0)
					error("cannot open %s: %s",
					    _PATH_DEVNULL, strerror(errno));
			}
		}
#else
		if (mode == FORK_BG) {
			FUNC12(SIGINT);
			FUNC12(SIGQUIT);
			if ((jp == NULL || jp->nprocs == 0) &&
			    ! FUNC7 ()) {
				FUNC3(0);
				if (FUNC13(_PATH_DEVNULL, O_RDONLY) != 0)
					FUNC6("cannot open %s: %s",
					    _PATH_DEVNULL, FUNC17(errno));
			}
		}
#endif
		INTOFF;
		for (i = njobs, p = jobtab ; --i >= 0 ; p++)
			if (p->used)
				FUNC10(p);
		INTON;
		if (wasroot && iflag) {
			FUNC16(SIGINT);
			FUNC16(SIGQUIT);
			FUNC16(SIGTERM);
		}
		return pid;
	}
	if (rootshell && mode != FORK_NOJOB && mflag) {
		if (jp == NULL || jp->nprocs == 0)
			pgrp = pid;
		else
			pgrp = jp->ps[0].pid;
		FUNC15(pid, pgrp);
	}
	if (mode == FORK_BG) {
		if (bgjob != NULL && bgjob->state == JOBDONE &&
		    !bgjob->remembered && !iflag)
			FUNC10(bgjob);
		backgndpid = pid;		/* set $! */
		bgjob = jp;
	}
	if (jp) {
		struct procstat *ps = &jp->ps[jp->nprocs++];
		ps->pid = pid;
		ps->status = -1;
		ps->cmd = nullstr;
		if (iflag && rootshell && n)
			ps->cmd = FUNC5(n);
		jp->foreground = mode == FORK_FG;
#if JOBS
		setcurjob(jp);
#endif
	}
	INTON;
	FUNC0(("In parent shell:  child = %d\n", (int)pid));
	return pid;
}