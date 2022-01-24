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
struct zone {int /*<<< orphan*/  lru_lock; } ;
struct page_cgroup {int dummy; } ;
struct page {int dummy; } ;
typedef  enum lru_list { ____Placeholder_lru_list } lru_list ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page_cgroup*) ; 
 int /*<<< orphan*/  FUNC1 (struct page_cgroup*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct zone*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct zone*,struct page*,int) ; 
 struct page_cgroup* FUNC5 (struct page*) ; 
 int FUNC6 (struct page*) ; 
 struct zone* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct page *page)
{
	enum lru_list lru;
	unsigned long flags;
	struct zone *zone = FUNC7(page);
	struct page_cgroup *pc = FUNC5(page);

	FUNC8(&zone->lru_lock, flags);
	lru = FUNC6(page);
	/*
	 * The uncharged page could still be registered to the LRU of
	 * the stale pc->mem_cgroup.
	 *
	 * As pc->mem_cgroup is about to get overwritten, the old LRU
	 * accounting needs to be taken care of.  Let root_mem_cgroup
	 * babysit the page until the new memcg is responsible for it.
	 *
	 * The PCG_USED bit is guarded by lock_page() as the page is
	 * swapcache/pagecache.
	 */
	if (FUNC2(page) && FUNC0(pc) && !FUNC1(pc)) {
		FUNC4(zone, page, lru);
		FUNC3(zone, page, lru);
	}
	FUNC9(&zone->lru_lock, flags);
}