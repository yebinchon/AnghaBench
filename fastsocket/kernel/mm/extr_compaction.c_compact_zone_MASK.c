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
struct compact_control {unsigned long migrate_pfn; unsigned long free_pfn; scalar_t__ sync; unsigned long nr_migratepages; scalar_t__ nr_freepages; int /*<<< orphan*/  freepages; int /*<<< orphan*/  migratepages; scalar_t__ contended; int /*<<< orphan*/  order; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPACTBLOCKS ; 
 int /*<<< orphan*/  COMPACTPAGEFAILED ; 
 int /*<<< orphan*/  COMPACTPAGES ; 
#define  COMPACT_CONTINUE 130 
#define  COMPACT_PARTIAL 129 
#define  COMPACT_SKIPPED 128 
 int /*<<< orphan*/  MIGRATE_ASYNC ; 
 scalar_t__ MIGRATE_SYNC ; 
 int /*<<< orphan*/  MIGRATE_SYNC_LIGHT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct zone*) ; 
 int FUNC2 (struct zone*,struct compact_control*) ; 
 int /*<<< orphan*/  compaction_alloc ; 
 scalar_t__ FUNC3 (struct zone*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct zone*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct zone*,struct compact_control*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int pageblock_nr_pages ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct compact_control*) ; 

__attribute__((used)) static int FUNC15(struct zone *zone, struct compact_control *cc)
{
	int ret;
	unsigned long start_pfn = zone->zone_start_pfn;
	unsigned long end_pfn = zone->zone_start_pfn + zone->spanned_pages;

	ret = FUNC4(zone, cc->order);
	switch (ret) {
	case COMPACT_PARTIAL:
	case COMPACT_SKIPPED:
		/* Compaction is likely to fail */
		return ret;
	case COMPACT_CONTINUE:
		/* Fall through to compaction */
		;
	}

	/*
	 * Clear pageblock skip if there were failures recently and
	 * compaction is about to be retried after being
	 * deferred. kswapd does not do this reset and it will wait
	 * direct compaction to do so either when the cursor meets
	 * after one compaction pass is complete or if compaction is
	 * restarted after being deferred for a while.
	 */
	if ((FUNC3(zone, cc->order)) && !FUNC7())
		FUNC1(zone);

	/*
	 * Setup to move all movable pages to the end of the zone. Used cached
	 * information on where the scanners should start but check that it
	 * is initialised by ensuring the values are within zone boundaries.
	 */
	cc->migrate_pfn = zone->compact_cached_migrate_pfn;
	cc->free_pfn = zone->compact_cached_free_pfn;
	if (cc->free_pfn < start_pfn || cc->free_pfn > end_pfn) {
		cc->free_pfn = end_pfn & ~(pageblock_nr_pages-1);
		zone->compact_cached_free_pfn = cc->free_pfn;
	}
	if (cc->migrate_pfn < start_pfn || cc->migrate_pfn > end_pfn) {
		cc->migrate_pfn = start_pfn;
		zone->compact_cached_migrate_pfn = cc->migrate_pfn;
	}

	FUNC11();

	while ((ret = FUNC2(zone, cc)) == COMPACT_CONTINUE) {
		unsigned long nr_migrate, nr_remaining;

		if (!FUNC8(zone, cc)) {
			if (cc->contended && cc->sync != MIGRATE_SYNC) {
				FUNC12(&cc->migratepages);
				cc->nr_migratepages = 0;
				ret = COMPACT_PARTIAL;
				break;
			}
			continue;
		}

		nr_migrate = cc->nr_migratepages;
		FUNC10(&cc->migratepages, compaction_alloc,
				(unsigned long)cc, false,
				cc->sync ? MIGRATE_SYNC_LIGHT : MIGRATE_ASYNC);
		FUNC14(cc);
		nr_remaining = cc->nr_migratepages;

		FUNC5(COMPACTBLOCKS);
		FUNC6(COMPACTPAGES, nr_migrate - nr_remaining);
		if (nr_remaining)
			FUNC6(COMPACTPAGEFAILED, nr_remaining);

		/* Release LRU pages not migrated */
		if (!FUNC9(&cc->migratepages)) {
			FUNC12(&cc->migratepages);
			cc->nr_migratepages = 0;
		}

	}

	/* Release free pages and check accounting */
	cc->nr_freepages -= FUNC13(&cc->freepages);
	FUNC0(cc->nr_freepages != 0);

	return ret;
}