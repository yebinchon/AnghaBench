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
struct zone {unsigned long zone_start_pfn; unsigned long spanned_pages; int nr_migrate_reserve_block; } ;
struct page {int dummy; } ;

/* Variables and functions */
 unsigned long MIGRATE_MOVABLE ; 
 unsigned long MIGRATE_RESERVE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 unsigned long FUNC1 (struct page*) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct zone*) ; 
 int /*<<< orphan*/  FUNC4 (struct zone*,struct page*,unsigned long) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 scalar_t__ pageblock_nr_pages ; 
 int pageblock_order ; 
 struct page* FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,unsigned long) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (struct zone*) ; 

__attribute__((used)) static void FUNC12(struct zone *zone)
{
	unsigned long start_pfn, pfn, end_pfn;
	struct page *page;
	unsigned long block_migratetype;
	int reserve;
	bool anyblock = false;
	int old_reserve;
	int new_reserve;

retry:
	/* Get the start pfn, end pfn and the number of blocks to reserve */
	start_pfn = zone->zone_start_pfn;
	end_pfn = start_pfn + zone->spanned_pages;
	reserve = FUNC8(FUNC3(zone), pageblock_nr_pages) >>
							pageblock_order;

	/*
	 * Reserve blocks are generally in place to help high-order atomic
	 * allocations that are short-lived. A min_free_kbytes value that
	 * would result in more than 2 reserve blocks for atomic allocations
	 * is assumed to be in place to help anti-fragmentation for the
	 * future allocation of hugepages at runtime.
	 */
	reserve = new_reserve = FUNC2(2, reserve);
	old_reserve = zone->nr_migrate_reserve_block;

	/* When memory hot-add, we almost always need to do nothing */
	if (reserve == old_reserve)
		return;

	for (pfn = start_pfn; pfn < end_pfn; pfn += pageblock_nr_pages) {
		if (!FUNC7(pfn))
			continue;
		page = FUNC6(pfn);

		/* Watch out for overlapping nodes */
		if (FUNC5(page) != FUNC11(zone))
			continue;

		/* Blocks with reserved pages will never free, skip them. */
		if (FUNC0(page))
			continue;

		block_migratetype = FUNC1(page);

		/* If this block is reserved, account for it */
		if (reserve > 0 && block_migratetype == MIGRATE_RESERVE) {
			reserve--;
			continue;
		}

		/* Suitable for reserving if this block is movable */
		if (reserve > 0) {
			if (anyblock || block_migratetype == MIGRATE_MOVABLE) {
				FUNC9(page, MIGRATE_RESERVE);
				FUNC4(zone, page, MIGRATE_RESERVE);
				reserve--;
				continue;
			}
		} else if (!old_reserve && !anyblock) {
			/*
			 * At boot time we don't need to scan the whole zone
			 * for turning off MIGRATE_RESERVE.
			 * Note: when anyblock is true, we can't exit a loop and
			 * turn off MIGRATE_RESERVE which turn on pass-1.
			 */
			break;
		}

		/*
		 * If the reserve is met and this is a previous reserved block,
		 * take it back
		 */
		if (block_migratetype == MIGRATE_RESERVE) {
			FUNC9(page, MIGRATE_MOVABLE);
			FUNC4(zone, page, MIGRATE_MOVABLE);
		}
	}

	/*
	 * Ideally when selecting new MIGRATE_RESERVE blocks, an existing
	 * movable block is used to maximise available pages in the reserve
	 * block. Very early in boot, this is not an option so if the reserve
	 * is not met first time around, try again but allow any block to be
	 * used
	 */
	if (FUNC10(reserve) && !anyblock) {
		anyblock = true;
		goto retry;
	}

	zone->nr_migrate_reserve_block = new_reserve;
}