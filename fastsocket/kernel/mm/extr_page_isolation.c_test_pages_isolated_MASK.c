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
struct page {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ MIGRATE_ISOLATE ; 
 struct page* FUNC0 (unsigned long,unsigned long) ; 
 int FUNC1 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 struct zone* FUNC3 (struct page*) ; 
 unsigned long pageblock_nr_pages ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(unsigned long start_pfn, unsigned long end_pfn)
{
	unsigned long pfn, flags;
	struct page *page;
	struct zone *zone;
	int ret;

	pfn = start_pfn;
	/*
	 * Note: pageblock_nr_page != MAX_ORDER. Then, chunks of free page
	 * is not aligned to pageblock_nr_pages.
	 * Then we just check pagetype fist.
	 */
	for (pfn = start_pfn; pfn < end_pfn; pfn += pageblock_nr_pages) {
		page = FUNC0(pfn, pageblock_nr_pages);
		if (page && FUNC2(page) != MIGRATE_ISOLATE)
			break;
	}
	page = FUNC0(start_pfn, end_pfn - start_pfn);
	if ((pfn < end_pfn) || !page)
		return -EBUSY;
	/* Check all pages are free or Marked as ISOLATED */
	zone = FUNC3(page);
	FUNC4(&zone->lock, flags);
	ret = FUNC1(start_pfn, end_pfn);
	FUNC5(&zone->lock, flags);
	return ret ? 0 : -EBUSY;
}