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
struct mem_cgroup {scalar_t__ memsw_is_minimum; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int MEM_CGROUP_MAX_RECLAIM_LOOPS ; 
 unsigned long MEM_CGROUP_RECLAIM_NOSWAP ; 
 unsigned long MEM_CGROUP_RECLAIM_SHRINK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup*) ; 
 scalar_t__ FUNC2 (struct mem_cgroup*) ; 
 scalar_t__ FUNC3 (struct mem_cgroup*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC4(struct mem_cgroup *memcg,
					gfp_t gfp_mask,
					unsigned long flags)
{
	unsigned long total = 0;
	bool noswap = false;
	int loop;

	if (flags & MEM_CGROUP_RECLAIM_NOSWAP)
		noswap = true;
	if (!(flags & MEM_CGROUP_RECLAIM_SHRINK) && memcg->memsw_is_minimum)
		noswap = true;

	for (loop = 0; loop < MEM_CGROUP_MAX_RECLAIM_LOOPS; loop++) {
		if (loop)
			FUNC0();
		total += FUNC3(memcg, gfp_mask, noswap,
						      FUNC1(memcg));
		/*
		 * Allow limit shrinkers, which are triggered directly
		 * by userspace, to catch signals and stop reclaim
		 * after minimal progress, regardless of the margin.
		 */
		if (total && (flags & MEM_CGROUP_RECLAIM_SHRINK))
			break;
		if (FUNC2(memcg))
			break;
		/*
		 * If nothing was reclaimed after two attempts, there
		 * may be no reclaimable pages in this hierarchy.
		 */
		if (loop && !total)
			break;
	}
	return total;
}