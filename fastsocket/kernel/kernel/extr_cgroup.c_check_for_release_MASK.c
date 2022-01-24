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
struct cgroup {int /*<<< orphan*/  release_list; int /*<<< orphan*/  children; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cgroup*) ; 
 scalar_t__ FUNC2 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  release_agent_work ; 
 int /*<<< orphan*/  release_list ; 
 int /*<<< orphan*/  release_list_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct cgroup *cgrp)
{
	/* All of these checks rely on RCU to keep the cgroup
	 * structure alive */
	if (FUNC2(cgrp) && !FUNC0(&cgrp->count)
	    && FUNC6(&cgrp->children) && !FUNC1(cgrp)) {
		/* Control Group is currently removeable. If it's not
		 * already queued for a userspace notification, queue
		 * it now */
		int need_schedule_work = 0;
		FUNC7(&release_list_lock);
		if (!FUNC3(cgrp) &&
		    FUNC6(&cgrp->release_list)) {
			FUNC5(&cgrp->release_list, &release_list);
			need_schedule_work = 1;
		}
		FUNC8(&release_list_lock);
		if (need_schedule_work)
			FUNC4(&release_agent_work);
	}
}