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
struct procstat {int pid; int status; int /*<<< orphan*/  cmd; } ;
struct job {int foreground; int /*<<< orphan*/  nprocs; struct procstat* ps; } ;
struct jmploc {int /*<<< orphan*/  loc; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exitstatus ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 struct jmploc* handler ; 
 int jobtab ; 
 int /*<<< orphan*/  nullstr ; 
 int /*<<< orphan*/  FUNC7 (struct job*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char**,char**,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 

pid_t
FUNC12(struct job *jp, char **argv, char **envp, const char *path, int idx, int pip[2])
{
	pid_t pid;
	struct jmploc jmploc;
	struct jmploc *savehandler;

	FUNC0(("vforkexecshell(%%%td, %s, %p) called\n", jp - jobtab, argv[0],
	    (void *)pip));
	INTOFF;
	FUNC5();
	savehandler = handler;
	pid = FUNC11();
	if (pid == -1) {
		FUNC0(("Vfork failed, errno=%d\n", errno));
		INTON;
		FUNC4("Cannot fork: %s", FUNC10(errno));
	}
	if (pid == 0) {
		FUNC0(("Child shell %d\n", (int)FUNC6()));
		if (FUNC8(jmploc.loc))
			FUNC1(exitstatus);
		if (pip != NULL) {
			FUNC2(pip[0]);
			if (pip[1] != 1) {
				FUNC3(pip[1], 1);
				FUNC2(pip[1]);
			}
		}
		handler = &jmploc;
		FUNC9(argv, envp, path, idx);
	}
	handler = savehandler;
	if (jp) {
		struct procstat *ps = &jp->ps[jp->nprocs++];
		ps->pid = pid;
		ps->status = -1;
		ps->cmd = nullstr;
		jp->foreground = 1;
#if JOBS
		setcurjob(jp);
#endif
	}
	INTON;
	FUNC0(("In parent shell:  child = %d\n", (int)pid));
	return pid;
}