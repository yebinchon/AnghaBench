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
struct zone_reclaim_stat {unsigned long* recent_scanned; unsigned long* recent_rotated; } ;
struct zone {unsigned long pages_scanned; int /*<<< orphan*/  lru_lock; } ;
struct scan_control {int order; int /*<<< orphan*/  target_mem_cgroup; } ;
struct page {int /*<<< orphan*/  lru; } ;
struct mem_cgroup_zone {struct zone* zone; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPACTION_BUILD ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  ISOLATE_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ LRU_ACTIVE ; 
 scalar_t__ LRU_BASE ; 
 int LRU_FILE ; 
 scalar_t__ NR_ACTIVE_ANON ; 
 scalar_t__ NR_ACTIVE_FILE ; 
 scalar_t__ NR_ISOLATED_ANON ; 
 int /*<<< orphan*/  PGREFILL ; 
 unsigned long VM_EXEC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct zone*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct zone*,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct zone_reclaim_stat* FUNC5 (struct mem_cgroup_zone*) ; 
 scalar_t__ FUNC6 (struct scan_control*) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 unsigned long FUNC8 (unsigned long,struct mem_cgroup_zone*,int /*<<< orphan*/ *,unsigned long*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  l_active ; 
 int /*<<< orphan*/  l_hold ; 
 int /*<<< orphan*/  l_inactive ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 struct page* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct zone*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct page*) ; 
 scalar_t__ FUNC17 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (unsigned long,int,int) ; 
 scalar_t__ FUNC22 (int) ; 

__attribute__((used)) static void FUNC23(unsigned long nr_pages,
			       struct mem_cgroup_zone *mz,
			       struct scan_control *sc,
			       int priority, int file)
{
	unsigned long nr_taken;
	unsigned long pgscanned;
	unsigned long vm_flags;
	FUNC1(l_hold);	/* The pages which were snipped off */
	FUNC1(l_active);
	FUNC1(l_inactive);
	struct page *page;
	struct zone_reclaim_stat *reclaim_stat = FUNC5(mz);
	unsigned long nr_rotated = 0;
	int order = 0;
	struct zone *zone = mz->zone;

	if (!COMPACTION_BUILD)
		order = sc->order;

	FUNC12();
	FUNC19(&zone->lru_lock);

	nr_taken = FUNC8(nr_pages, mz, &l_hold,
				 &pgscanned, order,
				 ISOLATE_ACTIVE, 1, file);

	if (FUNC6(sc))
		zone->pages_scanned += pgscanned;

	reclaim_stat->recent_scanned[file] += nr_taken;

	FUNC2(PGREFILL, zone, pgscanned);
	if (file)
		FUNC3(zone, NR_ACTIVE_FILE, -nr_taken);
	else
		FUNC3(zone, NR_ACTIVE_ANON, -nr_taken);
	FUNC3(zone, NR_ISOLATED_ANON + file, nr_taken);
	FUNC20(&zone->lru_lock);

	while (!FUNC11(&l_hold)) {
		FUNC4();
		page = FUNC13(&l_hold);
		FUNC10(&page->lru);

		if (FUNC22(!FUNC15(page, NULL))) {
			FUNC18(page);
			continue;
		}

		if (FUNC17(page, 0, sc->target_mem_cgroup,
				    &vm_flags)) {
			nr_rotated += FUNC7(page);
			/*
			 * Identify referenced, file-backed active pages and
			 * give them one more trip around the active list. So
			 * that executable code get better chances to stay in
			 * memory under moderate memory pressure.  Anon pages
			 * are not likely to be evicted by use-once streaming
			 * IO, plus JVM can create lots of anon VM_EXEC pages,
			 * so we ignore them here.
			 */
			if ((vm_flags & VM_EXEC) && FUNC16(page)) {
				FUNC9(&page->lru, &l_active);
				continue;
			}
		}

		FUNC0(page);	/* we are de-activating */
		FUNC9(&page->lru, &l_inactive);
	}

	/*
	 * Move pages back to the lru list.
	 */
	FUNC19(&zone->lru_lock);
	/*
	 * Count referenced pages from currently used mappings as rotated,
	 * even though only some of them are actually re-activated.  This
	 * helps balance scan pressure between file and anonymous pages in
	 * get_scan_ratio.
	 */
	reclaim_stat->recent_rotated[file] += nr_rotated;

	FUNC14(zone, &l_active,
						LRU_ACTIVE + file * LRU_FILE);
	FUNC14(zone, &l_inactive,
						LRU_BASE   + file * LRU_FILE);
	FUNC3(zone, NR_ISOLATED_ANON + file, -nr_taken);
	FUNC20(&zone->lru_lock);
	FUNC21(pgscanned, file, priority);  
}