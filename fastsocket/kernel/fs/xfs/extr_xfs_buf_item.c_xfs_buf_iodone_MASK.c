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
struct xfs_log_item {struct xfs_ail* li_ailp; } ;
struct xfs_buf {int dummy; } ;
struct xfs_ail {int /*<<< orphan*/  xa_lock; } ;
struct TYPE_3__ {struct xfs_buf* bli_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct xfs_log_item*) ; 
 int /*<<< orphan*/  SHUTDOWN_CORRUPT_INCORE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_ail*,struct xfs_log_item*,int /*<<< orphan*/ ) ; 

void
FUNC6(
	struct xfs_buf		*bp,
	struct xfs_log_item	*lip)
{
	struct xfs_ail		*ailp = lip->li_ailp;

	FUNC0(FUNC1(lip)->bli_buf == bp);

	FUNC4(bp);

	/*
	 * If we are forcibly shutting down, this may well be
	 * off the AIL already. That's because we simulate the
	 * log-committed callbacks to unpin these buffers. Or we may never
	 * have put this item on AIL because of the transaction was
	 * aborted forcibly. xfs_trans_ail_delete() takes care of these.
	 *
	 * Either way, AIL is useless if we're forcing a shutdown.
	 */
	FUNC2(&ailp->xa_lock);
	FUNC5(ailp, lip, SHUTDOWN_CORRUPT_INCORE);
	FUNC3(FUNC1(lip));
}