#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cgroup {TYPE_1__* root; } ;
struct cftype {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  release_agent_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct cgroup*) ; 
 int /*<<< orphan*/  cgroup_root_mutex ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC6(struct cgroup *cgrp, struct cftype *cft,
				      const char *buffer)
{
	FUNC0(sizeof(cgrp->root->release_agent_path) < PATH_MAX);
	if (!FUNC1(cgrp))
		return -ENODEV;
	FUNC3(&cgroup_root_mutex);
	FUNC5(cgrp->root->release_agent_path, buffer);
	FUNC4(&cgroup_root_mutex);
	FUNC2();
	return 0;
}