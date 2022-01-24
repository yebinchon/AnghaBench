#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ps_prochandle {int dummy; } ;
typedef  int /*<<< orphan*/  psinfo_t ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {int pr_pid; } ;

/* Variables and functions */
#define  PS_LOST 129 
#define  PS_UNDEAD 128 
 int /*<<< orphan*/ * FUNC0 (struct ps_prochandle*) ; 
 int FUNC1 (struct ps_prochandle*) ; 
 TYPE_1__* FUNC2 (struct ps_prochandle*) ; 
 int SIG2STR_MAX ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int g_exited ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int FUNC7 (struct ps_prochandle*) ; 
 int FUNC8 (struct ps_prochandle*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC10(struct ps_prochandle *P, const char *msg, void *arg)
{
#ifdef illumos
	const psinfo_t *prp = Ppsinfo(P);
	int pid = Pstatus(P)->pr_pid;
#else
	int pid = FUNC7(P);
	int wstat = FUNC8(P);
#endif
	char name[SIG2STR_MAX];

	if (msg != NULL) {
		FUNC6("pid %d: %s\n", pid, msg);
		return;
	}

	switch (FUNC1(P)) {
	case PS_UNDEAD:
		/*
		 * Ideally we would like to always report pr_wstat here, but it
		 * isn't possible given current /proc semantics.  If we grabbed
		 * the process, Ppsinfo() will either fail or return a zeroed
		 * psinfo_t depending on how far the parent is in reaping it.
		 * When /proc provides a stable pr_wstat in the status file,
		 * this code can be improved by examining this new pr_wstat.
		 */
		if (FUNC4(wstat)) {
			FUNC6("pid %d terminated by %s\n", pid,
			    FUNC9(FUNC5(wstat),
			    name, sizeof (name)));
		} else if (FUNC3(wstat) != 0) {
			FUNC6("pid %d exited with status %d\n",
			    pid, FUNC3(wstat));
		} else {
			FUNC6("pid %d has exited\n", pid);
		}
		g_exited = 1;
		break;

	case PS_LOST:
		FUNC6("pid %d exec'd a set-id or unobservable program\n", pid);
		g_exited = 1;
		break;
	}
}