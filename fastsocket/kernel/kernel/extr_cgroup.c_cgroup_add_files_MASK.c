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
struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;
struct cftype {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cgroup*,struct cgroup_subsys*,struct cftype const*) ; 

int FUNC1(struct cgroup *cgrp,
			struct cgroup_subsys *subsys,
			const struct cftype cft[],
			int count)
{
	int i, err;
	for (i = 0; i < count; i++) {
		err = FUNC0(cgrp, subsys, &cft[i]);
		if (err)
			return err;
	}
	return 0;
}