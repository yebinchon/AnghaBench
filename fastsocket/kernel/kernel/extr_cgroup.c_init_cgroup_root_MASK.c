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
struct cgroup {struct cgroup* top_cgroup; struct cgroupfs_root* root; } ;
struct cgroupfs_root {int number_of_cgroups; int /*<<< orphan*/  root_list; int /*<<< orphan*/  subsys_list; struct cgroup top_cgroup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cgroup*) ; 

__attribute__((used)) static void FUNC2(struct cgroupfs_root *root)
{
	struct cgroup *cgrp = &root->top_cgroup;
	FUNC0(&root->subsys_list);
	FUNC0(&root->root_list);
	root->number_of_cgroups = 1;
	cgrp->root = root;
	cgrp->top_cgroup = cgrp;
	FUNC1(cgrp);
}