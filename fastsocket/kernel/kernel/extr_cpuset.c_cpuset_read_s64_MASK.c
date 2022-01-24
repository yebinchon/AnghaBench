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
struct cpuset {int /*<<< orphan*/  relax_domain_level; } ;
struct cgroup {int dummy; } ;
struct cftype {int private; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int cpuset_filetype_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  FILE_SCHED_RELAX_DOMAIN_LEVEL 128 
 struct cpuset* FUNC1 (struct cgroup*) ; 

__attribute__((used)) static s64 FUNC2(struct cgroup *cont, struct cftype *cft)
{
	struct cpuset *cs = FUNC1(cont);
	cpuset_filetype_t type = cft->private;
	switch (type) {
	case FILE_SCHED_RELAX_DOMAIN_LEVEL:
		return cs->relax_domain_level;
	default:
		FUNC0();
	}

	/* Unrechable but makes gcc happy */
	return 0;
}