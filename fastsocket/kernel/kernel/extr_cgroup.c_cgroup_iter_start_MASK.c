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
struct cgroup_iter {int /*<<< orphan*/ * cg_link; } ;
struct cgroup {int /*<<< orphan*/  css_sets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgroup*,struct cgroup_iter*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  css_set_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  use_task_css_set_links ; 

void FUNC3(struct cgroup *cgrp, struct cgroup_iter *it)
{
	/*
	 * The first time anyone tries to iterate across a cgroup,
	 * we need to enable the list linking each css_set to its
	 * tasks, and fix up all existing tasks.
	 */
	if (!use_task_css_set_links)
		FUNC1();

	FUNC2(&css_set_lock);
	it->cg_link = &cgrp->css_sets;
	FUNC0(cgrp, it);
}