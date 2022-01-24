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
struct page {int dummy; } ;
struct mem_cgroup_tree_per_zone {int /*<<< orphan*/  lock; } ;
struct mem_cgroup_per_zone {scalar_t__ on_tree; } ;
struct mem_cgroup {int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mem_cgroup*,struct mem_cgroup_per_zone*,struct mem_cgroup_tree_per_zone*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup*,struct mem_cgroup_per_zone*,struct mem_cgroup_tree_per_zone*) ; 
 struct mem_cgroup_per_zone* FUNC2 (struct mem_cgroup*,int,int) ; 
 int FUNC3 (struct page*) ; 
 int FUNC4 (struct page*) ; 
 struct mem_cgroup* FUNC5 (struct mem_cgroup*) ; 
 unsigned long long FUNC6 (int /*<<< orphan*/ *) ; 
 struct mem_cgroup_tree_per_zone* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct mem_cgroup *mem, struct page *page)
{
	unsigned long long excess;
	struct mem_cgroup_per_zone *mz;
	struct mem_cgroup_tree_per_zone *mctz;
	int nid = FUNC3(page);
	int zid = FUNC4(page);
	mctz = FUNC7(page);

	/*
	 * Necessary to update all ancestors when hierarchy is used.
	 * because their event counter is not touched.
	 */
	for (; mem; mem = FUNC5(mem)) {
		mz = FUNC2(mem, nid, zid);
		excess = FUNC6(&mem->res);
		/*
		 * We have to update the tree if mz is on RB-tree or
		 * mem is over its softlimit.
		 */
		if (excess || mz->on_tree) {
			FUNC8(&mctz->lock);
			/* if on-tree, remove it */
			if (mz->on_tree)
				FUNC1(mem, mz, mctz);
			/*
			 * Insert again. mz->usage_in_excess will be updated.
			 * If excess is 0, no tree ops.
			 */
			FUNC0(mem, mz, mctz, excess);
			FUNC9(&mctz->lock);
		}
	}
}