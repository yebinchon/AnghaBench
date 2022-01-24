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
 int /*<<< orphan*/  FUNC0 (struct page_cgroup*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct zone*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct zone*,struct page*,int) ; 
 struct page_cgroup* FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 
 struct zone* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct page *page)
{
	enum lru_list lru;
	unsigned long flags;
	struct zone *zone = FUNC6(page);
	struct page_cgroup *pc = FUNC4(page);

	FUNC7(&zone->lru_lock, flags);
	lru = FUNC5(page);
	/*
	 * If the page is not on the LRU, someone will soon put it
	 * there.  If it is, and also already accounted for on the
	 * memcg-side, it must be on the right lruvec as setting
	 * pc->mem_cgroup and PageCgroupUsed is properly ordered.
	 * Otherwise, root_mem_cgroup has been babysitting the page
	 * during the charge.  Move it to the new memcg now.
	 */
	if (FUNC1(page) && !FUNC0(pc)) {
		FUNC3(zone, page, lru);
		FUNC2(zone, page, lru);
	}
	FUNC8(&zone->lru_lock, flags);
}