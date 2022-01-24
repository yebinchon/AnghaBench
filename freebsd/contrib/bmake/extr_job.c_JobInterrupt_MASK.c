#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_4__ {scalar_t__ job_state; int pid; int /*<<< orphan*/ * node; } ;
typedef  TYPE_1__ Job ;
typedef  int /*<<< orphan*/  GNode ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_INTERRUPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  JOB ; 
 scalar_t__ JOB_ST_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  MAKEINTR ; 
 int /*<<< orphan*/  TARG_NOCREATE ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aborting ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  ignoreErrors ; 
 TYPE_1__* job_table ; 
 TYPE_1__* job_table_end ; 
 int /*<<< orphan*/  touchFlag ; 

__attribute__((used)) static void
FUNC10(int runINTERRUPT, int signo)
{
    Job		*job;		/* job descriptor in that element */
    GNode	*interrupt;	/* the node describing the .INTERRUPT target */
    sigset_t	mask;
    GNode	*gn;

    aborting = ABORT_INTERRUPT;

    FUNC3(&mask);

    for (job = job_table; job < job_table_end; job++) {
	if (job->job_state != JOB_ST_RUNNING)
	    continue;

	gn = job->node;

	FUNC1(gn);
	if (job->pid) {
	    if (FUNC0(JOB)) {
		(void)FUNC9(debug_file,
			   "JobInterrupt passing signal %d to child %d.\n",
			   signo, job->pid);
	    }
	    FUNC5(job->pid, signo);
	}
    }

    FUNC4(&mask);

    if (runINTERRUPT && !touchFlag) {
	interrupt = FUNC6(".INTERRUPT", TARG_NOCREATE);
	if (interrupt != NULL) {
	    ignoreErrors = FALSE;
	    FUNC2(interrupt);
	}
    }
    FUNC7(MAKEINTR, 0);
    FUNC8(signo);
}