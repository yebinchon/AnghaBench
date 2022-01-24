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
struct procstat {int status; int /*<<< orphan*/  pid; } ;
struct job {scalar_t__ state; int nprocs; struct procstat* ps; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 scalar_t__ JOBDONE ; 
 int /*<<< orphan*/  SIGCONT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct job*) ; 

__attribute__((used)) static void
FUNC3(struct job *jp)
{
	struct procstat *ps;
	int i;

	if (jp->state == JOBDONE)
		return;
	FUNC2(jp);
	INTOFF;
	FUNC1(-jp->ps[0].pid, SIGCONT);
	for (ps = jp->ps, i = jp->nprocs ; --i >= 0 ; ps++) {
		if (FUNC0(ps->status)) {
			ps->status = -1;
			jp->state = 0;
		}
	}
	INTON;
}