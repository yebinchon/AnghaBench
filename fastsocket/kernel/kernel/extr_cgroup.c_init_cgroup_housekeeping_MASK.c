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
struct cgroup {int /*<<< orphan*/  event_list_lock; int /*<<< orphan*/  event_list; int /*<<< orphan*/  pidlist_mutex; int /*<<< orphan*/  pidlists; int /*<<< orphan*/  release_list; int /*<<< orphan*/  css_sets; int /*<<< orphan*/  children; int /*<<< orphan*/  sibling; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cgroup *cgrp)
{
	FUNC0(&cgrp->sibling);
	FUNC0(&cgrp->children);
	FUNC0(&cgrp->css_sets);
	FUNC0(&cgrp->release_list);
	FUNC0(&cgrp->pidlists);
	FUNC1(&cgrp->pidlist_mutex);
	FUNC0(&cgrp->event_list);
	FUNC2(&cgrp->event_list_lock);
}