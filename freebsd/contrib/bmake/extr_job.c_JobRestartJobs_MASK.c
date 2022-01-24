#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ job_state; int pid; int /*<<< orphan*/  exit_status; scalar_t__ job_suspended; TYPE_1__* node; } ;
struct TYPE_6__ {char* name; } ;
typedef  TYPE_2__ Job ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JOB ; 
 scalar_t__ JOB_ST_FINISHED ; 
 scalar_t__ JOB_ST_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGCONT ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__* job_table ; 
 TYPE_2__* job_table_end ; 
 scalar_t__ make_suspended ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC6(void)
{
    Job *job;

    for (job = job_table; job < job_table_end; job++) {
	if (job->job_state == JOB_ST_RUNNING &&
		(make_suspended || job->job_suspended)) {
	    if (FUNC0(JOB)) {
		(void)FUNC4(debug_file, "Restarting stopped job pid %d.\n",
			job->pid);
	    }
	    if (job->job_suspended) {
		    (void)FUNC5("*** [%s] Continued\n", job->node->name);
		    (void)FUNC3(stdout);
	    }
	    job->job_suspended = 0;
	    if (FUNC2(job->pid, SIGCONT) != 0 && FUNC0(JOB)) {
		FUNC4(debug_file, "Failed to send SIGCONT to %d\n", job->pid);
	    }
	}
	if (job->job_state == JOB_ST_FINISHED)
	    /* Job exit deferred after calling waitpid() in a signal handler */
	    FUNC1(job, job->exit_status);
    }
    make_suspended = 0;
}