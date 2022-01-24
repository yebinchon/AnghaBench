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
struct zone {int /*<<< orphan*/  lru_lock; int /*<<< orphan*/  zone_start_pfn; } ;
struct page {int /*<<< orphan*/  lru; } ;
struct list_head {int dummy; } ;
struct compact_control {unsigned long migrate_pfn; unsigned long free_pfn; int finished_update_migrate; unsigned long nr_migratepages; int /*<<< orphan*/  sync; struct list_head migratepages; } ;
typedef  int isolate_mode_t ;

/* Variables and functions */
 int FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 unsigned long COMPACT_CLUSTER_MAX ; 
 int HZ ; 
 int ISOLATE_ACTIVE ; 
 int ISOLATE_ASYNC_MIGRATE ; 
 int ISOLATE_INACTIVE ; 
 int MAX_ORDER_NR_PAGES ; 
 scalar_t__ MIGRATE_MOVABLE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 unsigned long SWAP_CLUSTER_MAX ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct page*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct zone*,int,struct compact_control*) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned long*,int,struct compact_control*) ; 
 int FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC12 (struct zone*,struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct compact_control*,struct page*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct list_head*) ; 
 unsigned long FUNC17 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 struct zone* FUNC19 (struct page*) ; 
 unsigned long pageblock_nr_pages ; 
 unsigned long pageblock_order ; 
 struct page* FUNC20 (unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC25 (struct zone*) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct compact_control*,struct page*,unsigned long,int) ; 

__attribute__((used)) static unsigned long FUNC28(struct zone *zone,
					struct compact_control *cc)
{
	unsigned long low_pfn, end_pfn;
	unsigned long last_pageblock_nr = 0, pageblock_nr;
	struct list_head *migratelist = &cc->migratepages;
	isolate_mode_t mode = ISOLATE_ACTIVE|ISOLATE_INACTIVE;
	unsigned long flags;
	bool locked;
	struct page *page = NULL, *valid_page = NULL;

	/* Do not scan outside zone boundaries */
	low_pfn = FUNC17(cc->migrate_pfn, zone->zone_start_pfn);

	/* Only scan within a pageblock boundary */
	end_pfn = FUNC0(low_pfn + pageblock_nr_pages, pageblock_nr_pages);

	/* Do not cross the free scanner or scan within a memory hole */
	if (end_pfn > cc->free_pfn || !FUNC21(low_pfn)) {
		cc->migrate_pfn = end_pfn;
		return 0;
	}

	/*
	 * Ensure that there are not too many pages isolated from the LRU
	 * list by either parallel reclaimers or compaction. If there are,
	 * delay for some time until fewer pages are isolated
	 */
	while (FUNC26(FUNC25(zone))) {
		FUNC11(BLK_RW_ASYNC, HZ/10);

		if (FUNC13(current))
			return 0;
	}

	/* Time to isolate some pages for migration */
	FUNC10();
	FUNC23(&zone->lru_lock, flags);
	locked = true;
	for (; low_pfn < end_pfn; low_pfn++) {
		/* give a chance to irqs before checking need_resched() */
		if (!((low_pfn+1) % SWAP_CLUSTER_MAX)) {
			FUNC24(&zone->lru_lock, flags);
			locked = 0;
		}

		/* Check if it is ok to still hold the lock */
		locked = FUNC8(&zone->lru_lock, &flags,
								locked, cc);
		if (!locked)
			break;

		/*
		 * migrate_pfn does not necessarily start aligned to a
		 * pageblock. Ensure that pfn_valid is called when moving
		 * into a new MAX_ORDER_NR_PAGES range in case of large
		 * memory holes within the zone
		 */
		if ((low_pfn & (MAX_ORDER_NR_PAGES - 1)) == 0) {
			if (!FUNC21(low_pfn)) {
				low_pfn += MAX_ORDER_NR_PAGES - 1;
				continue;
			}
		}

		if (!FUNC22(low_pfn))
			continue;

		/*
		 * Get the page and ensure the page is within the same zone.
		 * See the comment in isolate_freepages about overlapping
		 * nodes. It is deliberate that the new zone lock is not taken
		 * as memory compaction should not move pages between nodes.
		 */
		page = FUNC20(low_pfn);
		if (FUNC19(page) != zone)
			continue;

		if (!valid_page)
			valid_page = page;

		/* If isolation recently failed, do not retry */
		pageblock_nr = low_pfn >> pageblock_order;
		if (!FUNC15(cc, page))
			goto next_pageblock;

		/* Skip if free */
		if (FUNC1(page))
			continue;

		/*
		 * For async migration, also only scan in MOVABLE blocks. Async
		 * migration is optimistic to see if the minimum amount of work
		 * satisfies the allocation
		 */
		if (!cc->sync && last_pageblock_nr != pageblock_nr &&
				FUNC14(page) != MIGRATE_MOVABLE) {
			low_pfn += pageblock_nr_pages;
			low_pfn = FUNC0(low_pfn, pageblock_nr_pages) - 1;
			last_pageblock_nr = pageblock_nr;
			cc->finished_update_migrate = true;
			continue;
		}

		if (!FUNC2(page))
			continue;

		/*
		 * PageLRU is set, and lru_lock excludes isolation,
		 * splitting and collapsing (collapsing has already
		 * happened if PageLRU is set).
		 */
		if (FUNC4(page)) {
			low_pfn += (1 << FUNC9(page)) - 1;
			continue;
		}

		if (!cc->sync)
			mode |= ISOLATE_ASYNC_MIGRATE;

		/* Try isolate the page */
		if (FUNC6(page, mode, 0) != 0)
			continue;

		FUNC5(FUNC3(page));

		/* Successfully isolated */
		cc->finished_update_migrate = true;
		FUNC12(zone, page, FUNC18(page));
		FUNC16(&page->lru, migratelist);
		cc->nr_migratepages++;

		/* Avoid isolating too much */
		if (cc->nr_migratepages == COMPACT_CLUSTER_MAX)
			break;

		continue;

next_pageblock:
		low_pfn += pageblock_nr_pages;
		low_pfn = FUNC0(low_pfn, pageblock_nr_pages) - 1;
		last_pageblock_nr = pageblock_nr;
	}

	FUNC7(zone, locked, cc);

	if (locked)
		FUNC24(&zone->lru_lock, flags);

	/* Update the pageblock-skip if the whole pageblock was scanned */
	if (low_pfn == end_pfn)
		FUNC27(cc, valid_page, cc->nr_migratepages, true);

	cc->migrate_pfn = low_pfn;
	return cc->nr_migratepages;
}