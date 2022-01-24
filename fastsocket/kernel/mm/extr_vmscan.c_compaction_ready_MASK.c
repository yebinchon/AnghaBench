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
struct zone {int present_pages; } ;
struct scan_control {unsigned long order; } ;

/* Variables and functions */
 int KSWAPD_ZONE_BALANCE_GAP_RATIO ; 
 unsigned long PAGE_ALLOC_COSTLY_ORDER ; 
 scalar_t__ FUNC0 (struct zone*) ; 
 int /*<<< orphan*/  FUNC1 (struct zone*,unsigned long) ; 
 unsigned long FUNC2 (struct zone*) ; 
 int /*<<< orphan*/  FUNC3 (struct zone*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct zone*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC6(struct zone *zone, struct scan_control *sc)
{
	unsigned long balance_gap, watermark;
	bool watermark_ok;

	/* Do not consider compaction for orders reclaim is meant to satisfy */
	if (sc->order <= PAGE_ALLOC_COSTLY_ORDER)
		return false;

	/*
	 * Compaction takes time to run and there are potentially other
	 * callers using the pages just freed. Continue reclaiming until
	 * there is a buffer of free pages available to give compaction
	 * a reasonable chance of completing and allocating the page
	 */
	balance_gap = FUNC4(FUNC3(zone),
		(zone->present_pages + KSWAPD_ZONE_BALANCE_GAP_RATIO-1) /
			KSWAPD_ZONE_BALANCE_GAP_RATIO);
	watermark = FUNC2(zone) + balance_gap + (2UL << sc->order);
	watermark_ok = FUNC5(zone, 0, watermark, 0, 0);

	/*
	 * If compaction is deferred, reclaim up to a point where
	 * compaction will have a chance of success when re-enabled
	 */
	if (FUNC0(zone))
		return watermark_ok;

	/* If compaction is not ready to start, keep reclaiming */
	if (!FUNC1(zone, sc->order))
		return false;

	return watermark_ok;
}