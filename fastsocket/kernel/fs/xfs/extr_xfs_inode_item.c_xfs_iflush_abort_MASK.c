#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* i_itemp; } ;
typedef  TYPE_1__ xfs_inode_t ;
struct TYPE_8__ {int li_flags; struct xfs_ail* li_ailp; } ;
struct TYPE_7__ {scalar_t__ ili_fields; scalar_t__ ili_last_fields; scalar_t__ ili_logged; TYPE_3__ ili_item; } ;
typedef  TYPE_2__ xfs_inode_log_item_t ;
struct xfs_ail {int /*<<< orphan*/  xa_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHUTDOWN_CORRUPT_INCORE ; 
 int /*<<< orphan*/  SHUTDOWN_LOG_IO_ERROR ; 
 int XFS_LI_IN_AIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_ail*,TYPE_3__*,int /*<<< orphan*/ ) ; 

void
FUNC4(
	xfs_inode_t		*ip,
	bool			stale)
{
	xfs_inode_log_item_t	*iip = ip->i_itemp;

	if (iip) {
		struct xfs_ail	*ailp = iip->ili_item.li_ailp;
		if (iip->ili_item.li_flags & XFS_LI_IN_AIL) {
			FUNC0(&ailp->xa_lock);
			if (iip->ili_item.li_flags & XFS_LI_IN_AIL) {
				/* xfs_trans_ail_delete() drops the AIL lock. */
				FUNC3(ailp, &iip->ili_item,
						stale ?
							SHUTDOWN_LOG_IO_ERROR :
							SHUTDOWN_CORRUPT_INCORE);
			} else
				FUNC1(&ailp->xa_lock);
		}
		iip->ili_logged = 0;
		/*
		 * Clear the ili_last_fields bits now that we know that the
		 * data corresponding to them is safely on disk.
		 */
		iip->ili_last_fields = 0;
		/*
		 * Clear the inode logging fields so no more flushes are
		 * attempted.
		 */
		iip->ili_fields = 0;
	}
	/*
	 * Release the inode's flush lock since we're done with it.
	 */
	FUNC2(ip);
}