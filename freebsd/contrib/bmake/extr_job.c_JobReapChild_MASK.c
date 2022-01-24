#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  WAIT_T ;
struct TYPE_6__ {int pid; int job_suspended; int /*<<< orphan*/  exit_status; int /*<<< orphan*/  job_state; TYPE_1__* node; } ;
struct TYPE_5__ {char* name; } ;
typedef  TYPE_2__ Job ;
typedef  scalar_t__ Boolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JOB ; 
 int /*<<< orphan*/  JOB_ST_FINISHED ; 
 int /*<<< orphan*/  JOB_ST_RUNNING ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
#define  SIGSTOP 129 
#define  SIGTSTP 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,char*) ; 
 scalar_t__ jobTokensRunning ; 
 int /*<<< orphan*/  lurking_children ; 
 int /*<<< orphan*/  make_suspended ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC10(pid_t pid, WAIT_T status, Boolean isJobs)
{
    Job		  *job;	    	/* job descriptor for dead child */

    /*
     * Don't even bother if we know there's no one around.
     */
    if (jobTokensRunning == 0)
	return;

    job = FUNC2(pid, JOB_ST_RUNNING, isJobs);
    if (job == NULL) {
	if (isJobs) {
	    if (!lurking_children)
		FUNC1("Child (%d) status %x not in table?", pid, status);
	}
	return;				/* not ours */
    }
    if (FUNC5(status)) {
	if (FUNC0(JOB)) {
	    (void)FUNC8(debug_file, "Process %d (%s) stopped.\n",
			  job->pid, job->node->name);
	}
	if (!make_suspended) {
	    switch (FUNC6(status)) {
	    case SIGTSTP:
		(void)FUNC9("*** [%s] Suspended\n", job->node->name);
		break;
	    case SIGSTOP:
		(void)FUNC9("*** [%s] Stopped\n", job->node->name);
		break;
	    default:
		(void)FUNC9("*** [%s] Stopped -- signal %d\n",
			     job->node->name, FUNC6(status));
	    }
	    job->job_suspended = 1;
	}
	(void)FUNC7(stdout);
	return;
    }

    job->job_state = JOB_ST_FINISHED;
    job->exit_status = FUNC4(status);

    FUNC3(job, status);
}