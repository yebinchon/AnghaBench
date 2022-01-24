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
struct cpuset {int /*<<< orphan*/  cpus_allowed; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_SCHED_LOAD_BALANCE ; 
 struct cpuset* FUNC0 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpuset*) ; 
 int /*<<< orphan*/  number_of_cpusets ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct cpuset*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct cgroup_subsys *ss, struct cgroup *cont)
{
	struct cpuset *cs = FUNC0(cont);

	if (FUNC2(cs))
		FUNC4(CS_SCHED_LOAD_BALANCE, cs, 0);

	number_of_cpusets--;
	FUNC1(cs->cpus_allowed);
	FUNC3(cs);
}