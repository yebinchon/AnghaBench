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
struct job {scalar_t__ nprocs; scalar_t__ state; int /*<<< orphan*/  remembered; scalar_t__ changed; int /*<<< orphan*/  used; } ;

/* Variables and functions */
 scalar_t__ JOBDONE ; 
 int SHOWJOBS_DEFAULT ; 
 int SHOWJOBS_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct job* bgjob ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct job*) ; 
 scalar_t__ iflag ; 
 struct job* jobtab ; 
 int njobs ; 
 int /*<<< orphan*/  FUNC3 (struct job*,int) ; 

void
FUNC4(int change, int mode)
{
	int jobno;
	struct job *jp;

	FUNC0(("showjobs(%d) called\n", change));
	FUNC1();
	for (jobno = 1, jp = jobtab ; jobno <= njobs ; jobno++, jp++) {
		if (! jp->used)
			continue;
		if (jp->nprocs == 0) {
			FUNC2(jp);
			continue;
		}
		if (change && ! jp->changed)
			continue;
		FUNC3(jp, mode);
		if (mode == SHOWJOBS_DEFAULT || mode == SHOWJOBS_VERBOSE) {
			jp->changed = 0;
			/* Hack: discard jobs for which $! has not been
			 * referenced in interactive mode when they terminate.
			 */
			if (jp->state == JOBDONE && !jp->remembered &&
					(iflag || jp != bgjob)) {
				FUNC2(jp);
			}
		}
	}
}