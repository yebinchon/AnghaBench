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
struct zone {int /*<<< orphan*/  lock; } ;
struct list_head {int dummy; } ;
struct page {struct list_head lru; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_FREE_PAGES ; 
 int /*<<< orphan*/  FUNC0 (struct zone*,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC1 (struct zone*,unsigned int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct zone *zone, unsigned int order, 
			unsigned long count, struct list_head *list,
			int migratetype, int cold)
{
	int i;
	
	FUNC6(&zone->lock);
	for (i = 0; i < count; ++i) {
		struct page *page = FUNC1(zone, order, migratetype);
		if (FUNC8(page == NULL))
			break;

		/*
		 * Split buddy pages returned by expand() are received here
		 * in physical page order. The page is added to the callers and
		 * list and the list head then moves forward. From the callers
		 * perspective, the linked list is ordered by page number in
		 * some conditions. This is useful for IO devices that can
		 * merge IO requests if the physical pages are ordered
		 * properly.
		 */
		if (FUNC2(cold == 0))
			FUNC3(&page->lru, list);
		else
			FUNC4(&page->lru, list);
		FUNC5(page, migratetype);
		list = &page->lru;
	}
	FUNC0(zone, NR_FREE_PAGES, -(i << order));
	FUNC7(&zone->lock);
	return i;
}