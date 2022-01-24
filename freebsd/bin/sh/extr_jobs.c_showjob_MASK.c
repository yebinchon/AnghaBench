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
struct procstat {char const* cmd; scalar_t__ pid; int /*<<< orphan*/  status; } ;
struct job {int nprocs; scalar_t__ state; struct procstat* ps; } ;
typedef  int /*<<< orphan*/  statebuf ;

/* Variables and functions */
 scalar_t__ JOBSTOPPED ; 
 int SHOWJOBS_PGIDS ; 
 int SHOWJOBS_PIDS ; 
 int SHOWJOBS_VERBOSE ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int,...) ; 
 struct job* FUNC7 (struct job*) ; 
 int FUNC8 (struct job*) ; 
 struct job* jobtab ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (struct job*) ; 
 int FUNC13 (char const*) ; 
 char* FUNC14 (int) ; 

__attribute__((used)) static void
FUNC15(struct job *jp, int mode)
{
	char s[64];
	char statebuf[16];
	const char *statestr, *coredump;
	struct procstat *ps;
	struct job *j;
	int col, curr, i, jobno, prev, procno, status;
	char c;

	procno = (mode == SHOWJOBS_PGIDS) ? 1 : jp->nprocs;
	jobno = jp - jobtab + 1;
	curr = prev = 0;
#if JOBS
	if ((j = getcurjob(NULL)) != NULL) {
		curr = j - jobtab + 1;
		if ((j = getcurjob(j)) != NULL)
			prev = j - jobtab + 1;
	}
#endif
	coredump = "";
	status = FUNC8(jp);
	if (jp->state == 0) {
		statestr = "Running";
#if JOBS
	} else if (jp->state == JOBSTOPPED) {
		ps = jp->ps + jp->nprocs - 1;
		while (!WIFSTOPPED(ps->status) && ps > jp->ps)
			ps--;
		if (WIFSTOPPED(ps->status))
			i = WSTOPSIG(ps->status);
		else
			i = -1;
		statestr = strsignal(i);
		if (statestr == NULL)
			statestr = "Suspended";
#endif
	} else if (FUNC2(status)) {
		if (FUNC1(status) == 0)
			statestr = "Done";
		else {
			FUNC6(statebuf, sizeof(statebuf), "Done(%d)",
			    FUNC1(status));
			statestr = statebuf;
		}
	} else {
		i = FUNC5(status);
		statestr = FUNC14(i);
		if (statestr == NULL)
			statestr = "Unknown signal";
		if (FUNC0(status))
			coredump = " (core dumped)";
	}

	for (ps = jp->ps ; procno > 0 ; ps++, procno--) { /* for each process */
		if (mode == SHOWJOBS_PIDS || mode == SHOWJOBS_PGIDS) {
			FUNC10("%d\n", (int)ps->pid);
			continue;
		}
		if (mode != SHOWJOBS_VERBOSE && ps != jp->ps)
			continue;
		if (jobno == curr && ps == jp->ps)
			c = '+';
		else if (jobno == prev && ps == jp->ps)
			c = '-';
		else
			c = ' ';
		if (ps == jp->ps)
			FUNC6(s, 64, "[%d] %c ", jobno, c);
		else
			FUNC6(s, 64, "    %c ", c);
		FUNC11(s);
		col = FUNC13(s);
		if (mode == SHOWJOBS_VERBOSE) {
			FUNC6(s, 64, "%d ", (int)ps->pid);
			FUNC11(s);
			col += FUNC13(s);
		}
		if (ps == jp->ps) {
			FUNC11(statestr);
			FUNC11(coredump);
			col += FUNC13(statestr) + FUNC13(coredump);
		}
		do {
			FUNC9(' ');
			col++;
		} while (col < 30);
		if (mode == SHOWJOBS_VERBOSE) {
			FUNC11(ps->cmd);
			FUNC9('\n');
		} else
			FUNC12(jp);
	}
}