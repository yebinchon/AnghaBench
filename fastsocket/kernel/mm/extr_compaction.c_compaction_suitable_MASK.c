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
struct zone {int dummy; } ;

/* Variables and functions */
 unsigned long COMPACT_CONTINUE ; 
 unsigned long COMPACT_PARTIAL ; 
 unsigned long COMPACT_SKIPPED ; 
 int FUNC0 (struct zone*,int) ; 
 unsigned long FUNC1 (struct zone*) ; 
 int sysctl_extfrag_threshold ; 
 scalar_t__ FUNC2 (struct zone*,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

unsigned long FUNC3(struct zone *zone, int order)
{
	int fragindex;
	unsigned long watermark;

	/*
	 * order == -1 is expected when compacting via
	 * /proc/sys/vm/compact_memory
	 */
	if (order == -1)
		return COMPACT_CONTINUE;

	/*
	 * Watermarks for order-0 must be met for compaction. Note the 2UL.
	 * This is because during migration, copies of pages need to be
	 * allocated and for a short time, the footprint is higher
	 */
	watermark = FUNC1(zone) + (2UL << order);
	if (!FUNC2(zone, 0, watermark, 0, 0))
		return COMPACT_SKIPPED;

	/*
	 * fragmentation index determines if allocation failures are due to
	 * low memory or external fragmentation
	 *
	 * index of -1 implies allocations might succeed dependingon watermarks
	 * index towards 0 implies failure is due to lack of memory
	 * index towards 1000 implies failure is due to fragmentation
	 *
	 * Only compact if a failure would be due to fragmentation.
	 */
	fragindex = FUNC0(zone, order);
	if (fragindex >= 0 && fragindex <= sysctl_extfrag_threshold)
		return COMPACT_SKIPPED;

	if (fragindex == -1 && FUNC2(zone, order, watermark, 0, 0))
		return COMPACT_PARTIAL;

	return COMPACT_CONTINUE;
}