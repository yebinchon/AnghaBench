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
struct page_cgroup {struct mem_cgroup* mem_cgroup; } ;
struct page {int dummy; } ;
struct mem_cgroup_stat_cpu {int dummy; } ;
struct mem_cgroup_stat {struct mem_cgroup_stat_cpu* cpustat; } ;
struct mem_cgroup {struct mem_cgroup_stat stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page_cgroup*) ; 
 int /*<<< orphan*/  MEM_CGROUP_STAT_FILE_MAPPED ; 
 int /*<<< orphan*/  FUNC1 (struct page_cgroup*) ; 
 int /*<<< orphan*/  FUNC2 (struct page_cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_cgroup_stat_cpu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page_cgroup*) ; 
 struct page_cgroup* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct page_cgroup*) ; 

void FUNC10(struct page *page, int val)
{
	struct mem_cgroup *mem;
	struct mem_cgroup_stat *stat;
	struct mem_cgroup_stat_cpu *cpustat;
	int cpu;
	struct page_cgroup *pc;

	pc = FUNC5(page);
	if (FUNC8(!pc))
		return;

	FUNC4(pc);
	mem = pc->mem_cgroup;
	if (!mem)
		goto done;

	if (!FUNC1(pc))
		goto done;

	/*
	 * Preemption is already disabled, we don't need get_cpu()
	 */
	cpu = FUNC7();
	stat = &mem->stat;
	cpustat = &stat->cpustat[cpu];

	FUNC3(cpustat, MEM_CGROUP_STAT_FILE_MAPPED, val);
	if (val > 0)
		FUNC2(pc);
	else if (!FUNC6(page)) /* page could have been remapped */
		FUNC0(pc);
done:
	FUNC9(pc);
}