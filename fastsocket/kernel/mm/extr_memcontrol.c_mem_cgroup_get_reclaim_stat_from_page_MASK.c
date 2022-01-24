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
struct zone_reclaim_stat {int dummy; } ;
struct page_cgroup {int /*<<< orphan*/  mem_cgroup; } ;
struct page {int dummy; } ;
struct mem_cgroup_per_zone {struct zone_reclaim_stat reclaim_stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page_cgroup*) ; 
 struct page_cgroup* FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 () ; 
 struct mem_cgroup_per_zone* FUNC3 (int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

struct zone_reclaim_stat *
FUNC5(struct page *page)
{
	struct page_cgroup *pc;
	struct mem_cgroup_per_zone *mz;

	if (FUNC2())
		return NULL;

	pc = FUNC1(page);
	if (!FUNC0(pc))
		return NULL;
	/* Ensure pc->mem_cgroup is visible after reading PCG_USED. */
	FUNC4();
	mz = FUNC3(pc->mem_cgroup, page);
	if (!mz)
		return NULL;

	return &mz->reclaim_stat;
}