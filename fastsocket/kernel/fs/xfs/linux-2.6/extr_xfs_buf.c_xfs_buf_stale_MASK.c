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
struct xfs_buftarg {int /*<<< orphan*/  bt_lru_lock; int /*<<< orphan*/  bt_lru_nr; } ;
struct xfs_buf {int b_lru_flags; int /*<<< orphan*/  b_hold; int /*<<< orphan*/  b_lru; struct xfs_buftarg* b_target; int /*<<< orphan*/  b_lru_ref; int /*<<< orphan*/  b_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XBF_STALE ; 
 int _XBF_LRU_DISPOSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(
	struct xfs_buf	*bp)
{
	bp->b_flags |= XBF_STALE;
	FUNC3(&(bp)->b_lru_ref, 0);
	if (!FUNC5(&bp->b_lru)) {
		struct xfs_buftarg *btp = bp->b_target;

		FUNC6(&btp->bt_lru_lock);
		if (!FUNC5(&bp->b_lru) &&
		    !(bp->b_lru_flags & _XBF_LRU_DISPOSE)) {
			FUNC4(&bp->b_lru);
			btp->bt_lru_nr--;
			FUNC1(&bp->b_hold);
		}
		FUNC7(&btp->bt_lru_lock);
	}
	FUNC0(FUNC2(&bp->b_hold) >= 1);
}