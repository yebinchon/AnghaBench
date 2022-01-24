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
struct zone {TYPE_1__* free_area; } ;
struct page {int /*<<< orphan*/  lru; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_free; int /*<<< orphan*/ * free_list; } ;

/* Variables and functions */
 int MAX_ORDER ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long,unsigned int) ; 
 struct page* FUNC3 (struct page*,unsigned long,unsigned int) ; 
 unsigned long FUNC4 (struct zone*,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct page*,struct page*,unsigned int) ; 
 int FUNC10 (struct page*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,unsigned int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC15(struct page *page,
		struct zone *zone, unsigned int order,
		int migratetype)
{
	unsigned long page_idx;
	unsigned long combined_idx;
	struct page *buddy;

	if (FUNC14(FUNC0(page)))
		if (FUNC14(FUNC5(page, order)))
			return;

	FUNC1(migratetype == -1);

	page_idx = FUNC10(page) & ((1 << MAX_ORDER) - 1);

	FUNC1(page_idx & ((1 << order) - 1));
	FUNC1(FUNC4(zone, page));

	while (order < MAX_ORDER-1) {
		buddy = FUNC3(page, page_idx, order);
		if (!FUNC9(page, buddy, order))
			break;

		/* Our buddy is free, merge with it and move up one order. */
		FUNC8(&buddy->lru);
		zone->free_area[order].nr_free--;
		FUNC12(buddy);
		combined_idx = FUNC2(page_idx, order);
		page = page + (combined_idx - page_idx);
		page_idx = combined_idx;
		order++;
	}
	FUNC13(page, order);

	/*
	 * If this is not the largest possible page, check if the buddy
	 * of the next-highest order is free. If it is, it's possible
	 * that pages are being freed that will coalesce soon. In case,
	 * that is happening, add the free page to the tail of the list
	 * so it's less likely to be used soon and more likely to be merged
	 * as a higher order page
	 */
	if ((order < MAX_ORDER-2) && FUNC11(FUNC10(buddy))) {
		struct page *higher_page, *higher_buddy;
		combined_idx = FUNC2(page_idx, order);
		higher_page = page + combined_idx - page_idx;
		higher_buddy = FUNC3(higher_page, combined_idx, order + 1);
		if (FUNC9(higher_page, higher_buddy, order + 1)) {
			FUNC7(&page->lru,
				&zone->free_area[order].free_list[migratetype]);
			goto out;
		}
	}

	FUNC6(&page->lru, &zone->free_area[order].free_list[migratetype]);
out:
	zone->free_area[order].nr_free++;
}