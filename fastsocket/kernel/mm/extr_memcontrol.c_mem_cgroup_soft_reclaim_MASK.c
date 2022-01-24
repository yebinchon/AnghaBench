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
struct zone {TYPE_1__* zone_pgdat; } ;
struct mem_cgroup_reclaim_cookie {int /*<<< orphan*/  priority; struct zone* zone; } ;
struct mem_cgroup {int /*<<< orphan*/  res; int /*<<< orphan*/  stat; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  node_id; } ;

/* Variables and functions */
 int MEM_CGROUP_MAX_RECLAIM_LOOPS ; 
 int /*<<< orphan*/  FUNC0 (struct mem_cgroup*) ; 
 unsigned long FUNC1 (struct mem_cgroup*) ; 
 struct mem_cgroup* FUNC2 (struct mem_cgroup*,struct mem_cgroup*,struct mem_cgroup_reclaim_cookie*) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_cgroup*,struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct mem_cgroup*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct zone*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct mem_cgroup *root_mem,
				   struct zone *zone,
				   gfp_t gfp_mask)
{
	struct mem_cgroup *victim = NULL;
	int total = 0;
	int loop = 0;
	unsigned long excess = FUNC1(root_mem);
	struct mem_cgroup_reclaim_cookie reclaim = {
		.zone = zone,
		.priority = 0,
	};

	while (1) {
		victim = FUNC2(root_mem, victim, &reclaim);
		if (!victim) {
			loop++;
			if (loop >= 2) {
				/*
				 * If we have not been able to reclaim
				 * anything, it might because there are
				 * no reclaimable pages under this hierarchy
				 */
				if (!total)
					break;
				/*
				 * We want to do more targetted reclaim.
				 * excess >> 2 is not to excessive so as to
				 * reclaim too much, nor too less that we keep
				 * coming back to reclaim from this cgroup
				 */
				if (total >= (excess >> 2) ||
					(loop > MEM_CGROUP_MAX_RECLAIM_LOOPS))
					break;
			}
			continue;
		}
		if (!FUNC4(&victim->stat)) {
			/* this cgroup's local usage == 0 */
			continue;
		}

		total += FUNC5(victim, gfp_mask, false,
						FUNC0(victim), zone,
						zone->zone_pgdat->node_id);
		if (FUNC6(&root_mem->res))
			break;
	}
	FUNC3(root_mem, victim);
	return total;
}