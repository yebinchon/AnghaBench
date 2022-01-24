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
struct rds_ib_refill_cache {int /*<<< orphan*/  xfer; int /*<<< orphan*/  percpu; } ;
struct rds_ib_cache_head {scalar_t__ count; struct list_head* first; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 scalar_t__ RDS_IB_RECYCLE_BATCH_COUNT ; 
 struct list_head* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 struct rds_ib_cache_head* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct list_head* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct list_head *new_item,
				 struct rds_ib_refill_cache *cache)
{
	unsigned long flags;
	struct rds_ib_cache_head *chp;
	struct list_head *old;

	FUNC5(flags);

	chp = FUNC6(cache->percpu, FUNC7());
	if (!chp->first)
		FUNC0(new_item);
	else /* put on front */
		FUNC2(new_item, chp->first);
	chp->first = new_item;
	chp->count++;

	if (chp->count < RDS_IB_RECYCLE_BATCH_COUNT)
		goto end;

	/*
	 * Return our per-cpu first list to the cache's xfer by atomically
	 * grabbing the current xfer list, appending it to our per-cpu list,
	 * and then atomically returning that entire list back to the
	 * cache's xfer list as long as it's still empty.
	 */
	do {
		old = FUNC8(&cache->xfer, NULL);
		if (old)
			FUNC3(old, chp->first);
		old = FUNC1(&cache->xfer, NULL, chp->first);
	} while (old);

	chp->first = NULL;
	chp->count = 0;
end:
	FUNC4(flags);
}