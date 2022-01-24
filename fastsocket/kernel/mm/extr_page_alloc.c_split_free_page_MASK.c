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
struct TYPE_2__ {int /*<<< orphan*/  nr_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MIGRATE_MOVABLE ; 
 int /*<<< orphan*/  NR_FREE_PAGES ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct zone*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct zone*) ; 
 unsigned int FUNC5 (struct page*) ; 
 struct zone* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  pageblock_nr_pages ; 
 int pageblock_order ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct zone*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12(struct page *page)
{
	unsigned int order;
	unsigned long watermark;
	struct zone *zone;

	FUNC0(!FUNC1(page));

	zone = FUNC6(page);
	order = FUNC5(page);

	/* Obey watermarks as if the page was being allocated */
	watermark = FUNC4(zone) + (1 << order);
	if (!FUNC11(zone, 0, watermark, 0, 0))
		return 0;

	/* Remove page from free list */
	FUNC3(&page->lru);
	zone->free_area[order].nr_free--;
	FUNC7(page);
	FUNC2(zone, NR_FREE_PAGES, -(1UL << order));

	/* Split into individual pages */
	FUNC8(page);
	FUNC10(page, order);

	if (order >= pageblock_order - 1) {
		struct page *endpage = page + (1 << order) - 1;
		for (; page < endpage; page += pageblock_nr_pages)
			FUNC9(page, MIGRATE_MOVABLE);
	}

	return 1 << order;
}