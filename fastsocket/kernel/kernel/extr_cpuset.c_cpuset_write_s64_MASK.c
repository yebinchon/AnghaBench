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
struct cpuset {int dummy; } ;
struct cgroup {int dummy; } ;
struct cftype {int private; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int cpuset_filetype_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
#define  FILE_SCHED_RELAX_DOMAIN_LEVEL 128 
 struct cpuset* FUNC0 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC1 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct cpuset*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cgroup *cgrp, struct cftype *cft, s64 val)
{
	int retval = 0;
	struct cpuset *cs = FUNC0(cgrp);
	cpuset_filetype_t type = cft->private;

	if (!FUNC1(cgrp))
		return -ENODEV;

	switch (type) {
	case FILE_SCHED_RELAX_DOMAIN_LEVEL:
		retval = FUNC3(cs, val);
		break;
	default:
		retval = -EINVAL;
		break;
	}
	FUNC2();
	return retval;
}