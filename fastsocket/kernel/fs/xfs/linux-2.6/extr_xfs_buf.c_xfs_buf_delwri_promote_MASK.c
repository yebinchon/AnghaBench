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
struct xfs_buftarg {int /*<<< orphan*/  bt_delwrite_lock; int /*<<< orphan*/  bt_delwrite_queue; } ;
struct xfs_buf {int b_flags; long b_queuetime; int /*<<< orphan*/  b_list; struct xfs_buftarg* b_target; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XBF_DELWRI ; 
 int _XBF_DELWRI_Q ; 
 long jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int xfs_buf_age_centisecs ; 

void
FUNC5(
	struct xfs_buf	*bp)
{
	struct xfs_buftarg *btp = bp->b_target;
	long		age = xfs_buf_age_centisecs * FUNC2(10) + 1;

	FUNC0(bp->b_flags & XBF_DELWRI);
	FUNC0(bp->b_flags & _XBF_DELWRI_Q);

	/*
	 * Check the buffer age before locking the delayed write queue as we
	 * don't need to promote buffers that are already past the flush age.
	 */
	if (bp->b_queuetime < jiffies - age)
		return;
	bp->b_queuetime = jiffies - age;
	FUNC3(&btp->bt_delwrite_lock);
	FUNC1(&bp->b_list, &btp->bt_delwrite_queue);
	FUNC4(&btp->bt_delwrite_lock);
}