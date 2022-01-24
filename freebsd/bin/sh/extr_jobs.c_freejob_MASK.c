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
struct procstat {scalar_t__ cmd; } ;
struct job {int nprocs; scalar_t__ ps; scalar_t__ used; struct procstat ps0; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 struct job* bgjob ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct job*) ; 
 scalar_t__ nullstr ; 

__attribute__((used)) static void
FUNC2(struct job *jp)
{
	struct procstat *ps;
	int i;

	INTOFF;
	if (bgjob == jp)
		bgjob = NULL;
	for (i = jp->nprocs, ps = jp->ps ; --i >= 0 ; ps++) {
		if (ps->cmd != nullstr)
			FUNC0(ps->cmd);
	}
	if (jp->ps != &jp->ps0)
		FUNC0(jp->ps);
	jp->used = 0;
#if JOBS
	deljob(jp);
#endif
	INTON;
}