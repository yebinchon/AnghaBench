#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct zone {int dummy; } ;
struct mem_cgroup_tree_per_zone {int /*<<< orphan*/  lock; } ;
struct mem_cgroup_per_zone {TYPE_1__* mem; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {int /*<<< orphan*/  css; int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int MEM_CGROUP_MAX_SOFT_LIMIT_RECLAIM_LOOPS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct mem_cgroup_per_zone*,struct mem_cgroup_tree_per_zone*,unsigned long long) ; 
 struct mem_cgroup_per_zone* FUNC1 (struct mem_cgroup_tree_per_zone*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct mem_cgroup_per_zone*,struct mem_cgroup_tree_per_zone*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mem_cgroup_per_zone* FUNC4 (struct mem_cgroup_tree_per_zone*) ; 
 unsigned long FUNC5 (TYPE_1__*,struct zone*,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC6 (int /*<<< orphan*/ *) ; 
 struct mem_cgroup_tree_per_zone* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

unsigned long FUNC10(struct zone *zone, int order,
						gfp_t gfp_mask, int nid,
						int zid)
{
	unsigned long nr_reclaimed = 0;
	struct mem_cgroup_per_zone *mz, *next_mz = NULL;
	unsigned long reclaimed;
	int loop = 0;
	struct mem_cgroup_tree_per_zone *mctz;
	unsigned long long excess;

	if (order > 0)
		return 0;

	mctz = FUNC7(nid, zid);
	/*
	 * This loop can run a while, specially if mem_cgroup's continuously
	 * keep exceeding their soft limit and putting the system under
	 * pressure
	 */
	do {
		if (next_mz)
			mz = next_mz;
		else
			mz = FUNC4(mctz);
		if (!mz)
			break;

		reclaimed = FUNC5(mz->mem, zone, gfp_mask);
		nr_reclaimed += reclaimed;
		FUNC8(&mctz->lock);

		/*
		 * If we failed to reclaim anything from this memory cgroup
		 * it is time to move on to the next cgroup
		 */
		next_mz = NULL;
		if (!reclaimed) {
			do {
				/*
				 * Loop until we find yet another one.
				 *
				 * By the time we get the soft_limit lock
				 * again, someone might have aded the
				 * group back on the RB tree. Iterate to
				 * make sure we get a different mem.
				 * mem_cgroup_largest_soft_limit_node returns
				 * NULL if no other cgroup is present on
				 * the tree
				 */
				next_mz =
				FUNC1(mctz);
				if (next_mz == mz) {
					FUNC3(&next_mz->mem->css);
					next_mz = NULL;
				} else /* next_mz == NULL or other memcg */
					break;
			} while (1);
		}
		FUNC2(mz->mem, mz, mctz);
		excess = FUNC6(&mz->mem->res);
		/*
		 * One school of thought says that we should not add
		 * back the node to the tree if reclaim returns 0.
		 * But our reclaim could return 0, simply because due
		 * to priority we are exposing a smaller subset of
		 * memory to reclaim from. Consider this as a longer
		 * term TODO.
		 */
		/* If excess == 0, no tree ops */
		FUNC0(mz->mem, mz, mctz, excess);
		FUNC9(&mctz->lock);
		FUNC3(&mz->mem->css);
		loop++;
		/*
		 * Could not reclaim anything and there are no more
		 * mem cgroups to try or we seem to be looping without
		 * reclaiming anything.
		 */
		if (!nr_reclaimed &&
			(next_mz == NULL ||
			loop > MEM_CGROUP_MAX_SOFT_LIMIT_RECLAIM_LOOPS))
			break;
	} while (!nr_reclaimed);
	if (next_mz)
		FUNC3(&next_mz->mem->css);
	return nr_reclaimed;
}