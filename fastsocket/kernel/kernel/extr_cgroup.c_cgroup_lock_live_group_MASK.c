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
struct cgroup {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cgroup*) ; 
 int /*<<< orphan*/  cgroup_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(struct cgroup *cgrp)
{
	FUNC1(&cgroup_mutex);
	if (FUNC0(cgrp)) {
		FUNC2(&cgroup_mutex);
		return false;
	}
	return true;
}