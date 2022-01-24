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
struct page_cgroup {int dummy; } ;
struct mem_cgroup_stat_cpu {int dummy; } ;
struct mem_cgroup_stat {struct mem_cgroup_stat_cpu* cpustat; } ;
struct mem_cgroup {struct mem_cgroup_stat stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_CGROUP_STAT_CACHE ; 
 int /*<<< orphan*/  MEM_CGROUP_STAT_EVENTS ; 
 int /*<<< orphan*/  MEM_CGROUP_STAT_PGPGIN_COUNT ; 
 int /*<<< orphan*/  MEM_CGROUP_STAT_PGPGOUT_COUNT ; 
 int /*<<< orphan*/  MEM_CGROUP_STAT_RSS ; 
 long PAGE_SHIFT ; 
 scalar_t__ FUNC0 (struct page_cgroup*) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup_stat_cpu*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct mem_cgroup *mem,
					 struct page_cgroup *pc,
					 long size)
{
	struct mem_cgroup_stat *stat = &mem->stat;
	struct mem_cgroup_stat_cpu *cpustat;
	long numpages = size >> PAGE_SHIFT;
	int cpu = FUNC2();

	cpustat = &stat->cpustat[cpu];
	if (FUNC0(pc))
		FUNC1(cpustat,
			MEM_CGROUP_STAT_CACHE, numpages);
	else
		FUNC1(cpustat, MEM_CGROUP_STAT_RSS,
			numpages);

	if (numpages > 0)
		FUNC1(cpustat,
				MEM_CGROUP_STAT_PGPGIN_COUNT, 1);
	else
		FUNC1(cpustat,
				MEM_CGROUP_STAT_PGPGOUT_COUNT, 1);
	FUNC1(cpustat, MEM_CGROUP_STAT_EVENTS, 1);
	FUNC3();
}