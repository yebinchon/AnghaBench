#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zone_reclaim_stat {unsigned long* recent_scanned; int* recent_rotated; } ;
struct scan_control {unsigned long swappiness; } ;
struct mem_cgroup_zone {TYPE_1__* zone; } ;
struct TYPE_3__ {int /*<<< orphan*/  lru_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  LRU_ACTIVE_ANON ; 
 int /*<<< orphan*/  LRU_ACTIVE_FILE ; 
 int /*<<< orphan*/  LRU_INACTIVE_ANON ; 
 int /*<<< orphan*/  LRU_INACTIVE_FILE ; 
 int /*<<< orphan*/  NR_FREE_PAGES ; 
 struct zone_reclaim_stat* FUNC0 (struct mem_cgroup_zone*) ; 
 scalar_t__ FUNC1 (struct scan_control*) ; 
 unsigned long FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 unsigned long FUNC6 (struct mem_cgroup_zone*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct mem_cgroup_zone *mz, struct scan_control *sc,
					unsigned long *percent)
{
	unsigned long anon, file, free;
	unsigned long anon_prio, file_prio;
	unsigned long ap, fp;
	struct zone_reclaim_stat *reclaim_stat = FUNC0(mz);

	anon  = FUNC6(mz, LRU_ACTIVE_ANON) +
		FUNC6(mz, LRU_INACTIVE_ANON);
	file  = FUNC6(mz, LRU_ACTIVE_FILE) +
		FUNC6(mz, LRU_INACTIVE_FILE);

	if (FUNC1(sc)) {
		free  = FUNC7(mz->zone, NR_FREE_PAGES);
		/* If we have very few page cache pages,
		   force-scan anon pages. */
		if (FUNC5(file + free <= FUNC2(mz->zone))) {
			percent[0] = 100;
			percent[1] = 0;
			return;
		}
	}

	/*
	 * OK, so we have swap space and a fair amount of page cache
	 * pages.  We use the recently rotated / recently scanned
	 * ratios to determine how valuable each cache is.
	 *
	 * Because workloads change over time (and to avoid overflow)
	 * we keep these statistics as a floating average, which ends
	 * up weighing recent references more than old ones.
	 *
	 * anon in [0], file in [1]
	 */
	if (FUNC5(reclaim_stat->recent_scanned[0] > anon / 4)) {
		FUNC3(&mz->zone->lru_lock);
		reclaim_stat->recent_scanned[0] /= 2;
		reclaim_stat->recent_rotated[0] /= 2;
		FUNC4(&mz->zone->lru_lock);
	}

	if (FUNC5(reclaim_stat->recent_scanned[1] > file / 4)) {
		FUNC3(&mz->zone->lru_lock);
		reclaim_stat->recent_scanned[1] /= 2;
		reclaim_stat->recent_rotated[1] /= 2;
		FUNC4(&mz->zone->lru_lock);
	}

	/*
	 * With swappiness at 100, anonymous and file have the same priority.
	 * This scanning priority is essentially the inverse of IO cost.
	 */
	anon_prio = sc->swappiness;
	file_prio = 200 - sc->swappiness;

	/*
	 * The amount of pressure on anon vs file pages is inversely
	 * proportional to the fraction of recently scanned pages on
	 * each list that were recently referenced and in active use.
	 */
	ap = anon_prio * (reclaim_stat->recent_scanned[0] + 1);
	ap /= reclaim_stat->recent_rotated[0] + 1;

	fp = file_prio * (reclaim_stat->recent_scanned[1] + 1);
	fp /= reclaim_stat->recent_rotated[1] + 1;

	/* Normalize to percentages */
	percent[0] = 100 * ap / (ap + fp + 1);
	percent[1] = 100 - percent[0];
}