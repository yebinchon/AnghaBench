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
struct mem_cgroup_stat_cpu {int dummy; } ;
struct TYPE_2__ {struct mem_cgroup_stat_cpu* cpustat; } ;
struct mem_cgroup {TYPE_1__ stat; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_CGROUP_STAT_EVENTS ; 
 scalar_t__ SOFTLIMIT_EVENTS_THRESH ; 
 scalar_t__ FUNC0 (struct mem_cgroup_stat_cpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup_stat_cpu*,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static bool FUNC5(struct mem_cgroup *mem)
{
	bool ret = false;
	int cpu;
	s64 val;
	struct mem_cgroup_stat_cpu *cpustat;

	cpu = FUNC2();
	cpustat = &mem->stat.cpustat[cpu];
	val = FUNC0(cpustat, MEM_CGROUP_STAT_EVENTS);
	if (FUNC4(val > SOFTLIMIT_EVENTS_THRESH)) {
		FUNC1(cpustat, MEM_CGROUP_STAT_EVENTS);
		ret = true;
	}
	FUNC3();
	return ret;
}