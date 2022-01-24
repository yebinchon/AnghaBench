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

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
#define  FILE_CPULIST 129 
#define  FILE_MEMLIST 128 
 struct cpuset* FUNC0 (struct cpuset*) ; 
 struct cpuset* FUNC1 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC2 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct cpuset*) ; 
 int FUNC5 (struct cpuset*,struct cpuset*,char const*) ; 
 int FUNC6 (struct cpuset*,struct cpuset*,char const*) ; 

__attribute__((used)) static int FUNC7(struct cgroup *cgrp, struct cftype *cft,
				const char *buf)
{
	int retval = 0;
	struct cpuset *cs = FUNC1(cgrp);
	struct cpuset *trialcs;

	if (!FUNC2(cgrp))
		return -ENODEV;

	trialcs = FUNC0(cs);
	if (!trialcs) {
		retval = -ENOMEM;
		goto out;
	}

	switch (cft->private) {
	case FILE_CPULIST:
		retval = FUNC5(cs, trialcs, buf);
		break;
	case FILE_MEMLIST:
		retval = FUNC6(cs, trialcs, buf);
		break;
	default:
		retval = -EINVAL;
		break;
	}

	FUNC4(trialcs);
out:
	FUNC3();
	return retval;
}