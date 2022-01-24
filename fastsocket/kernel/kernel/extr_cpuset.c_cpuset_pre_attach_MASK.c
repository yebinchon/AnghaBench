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

/* Variables and functions */
 struct cpuset* FUNC0 (struct cgroup*) ; 
 int /*<<< orphan*/  cpu_possible_mask ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpus_attach ; 
 int /*<<< orphan*/  cpuset_attach_nodemask_to ; 
 int /*<<< orphan*/  FUNC2 (struct cpuset*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cpuset*,int /*<<< orphan*/ *) ; 
 struct cpuset top_cpuset ; 

__attribute__((used)) static void FUNC4(struct cgroup *cont)
{
	struct cpuset *cs = FUNC0(cont);

	if (cs == &top_cpuset)
		FUNC1(cpus_attach, cpu_possible_mask);
	else
		FUNC2(cs, cpus_attach);

	FUNC3(cs, &cpuset_attach_nodemask_to);
}