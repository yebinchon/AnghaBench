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
struct zone {unsigned long zone_start_pfn; unsigned long spanned_pages; unsigned long compact_cached_migrate_pfn; unsigned long compact_cached_free_pfn; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct zone* FUNC1 (struct page*) ; 
 scalar_t__ pageblock_nr_pages ; 
 struct page* FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(struct zone *zone)
{
	unsigned long start_pfn = zone->zone_start_pfn;
	unsigned long end_pfn = zone->zone_start_pfn + zone->spanned_pages;
	unsigned long pfn;

	zone->compact_cached_migrate_pfn = start_pfn;
	zone->compact_cached_free_pfn = end_pfn;

	/* Walk the zone and mark every pageblock as suitable for isolation */
	for (pfn = start_pfn; pfn < end_pfn; pfn += pageblock_nr_pages) {
		struct page *page;
		if (!FUNC3(pfn))
			continue;

		page = FUNC2(pfn);
		if (zone != FUNC1(page))
			continue;

		FUNC0(page);
	}
}