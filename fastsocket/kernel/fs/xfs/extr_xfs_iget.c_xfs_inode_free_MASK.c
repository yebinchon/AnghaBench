#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int li_flags; struct xfs_ail* li_ailp; } ;
typedef  TYPE_3__ xfs_log_item_t ;
struct TYPE_6__ {int di_mode; } ;
struct xfs_inode {int /*<<< orphan*/  i_flags_lock; scalar_t__ i_ino; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_flush; int /*<<< orphan*/  i_pincount; int /*<<< orphan*/  i_iocount; TYPE_2__* i_itemp; int /*<<< orphan*/  i_mount; scalar_t__ i_afp; TYPE_1__ i_d; } ;
struct xfs_ail {int /*<<< orphan*/  xa_lock; } ;
struct rcu_head {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  i_dentry; } ;
struct TYPE_7__ {TYPE_3__ ili_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SHUTDOWN_CORRUPT_INCORE ; 
#define  S_IFDIR 130 
#define  S_IFLNK 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 TYPE_5__* FUNC1 (struct xfs_inode*) ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_IRECLAIM ; 
 int XFS_LI_IN_AIL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rcu_head*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_inode_free_callback ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_ail*,TYPE_3__*,int /*<<< orphan*/ ) ; 

void
FUNC12(
	struct xfs_inode	*ip)
{
	switch (ip->i_d.di_mode & S_IFMT) {
	case S_IFREG:
	case S_IFDIR:
	case S_IFLNK:
		FUNC9(ip, XFS_DATA_FORK);
		break;
	}

	if (ip->i_afp)
		FUNC9(ip, XFS_ATTR_FORK);

	if (ip->i_itemp) {
		/*
		 * Only if we are shutting down the fs will we see an
		 * inode still in the AIL. If it is there, we should remove
		 * it to prevent a use-after-free from occurring.
		 */
		xfs_log_item_t	*lip = &ip->i_itemp->ili_item;
		struct xfs_ail	*ailp = lip->li_ailp;

		FUNC0(((lip->li_flags & XFS_LI_IN_AIL) == 0) ||
				       FUNC2(ip->i_mount));
		if (lip->li_flags & XFS_LI_IN_AIL) {
			FUNC7(&ailp->xa_lock);
			if (lip->li_flags & XFS_LI_IN_AIL)
				FUNC11(ailp, lip,
						     SHUTDOWN_CORRUPT_INCORE);
			else
				FUNC8(&ailp->xa_lock);
		}
		FUNC10(ip);
		ip->i_itemp = NULL;
	}

	/* asserts to verify all state is correct here */
	FUNC0(FUNC3(&ip->i_iocount) == 0);
	FUNC0(FUNC3(&ip->i_pincount) == 0);
	FUNC0(!FUNC6(&ip->i_flags_lock));
	FUNC0(FUNC5(&ip->i_flush));

	/*
	 * Because we use RCU freeing we need to ensure the inode always
	 * appears to be reclaimed with an invalid inode number when in the
	 * free state. The ip->i_flags_lock provides the barrier against lookup
	 * races.
	 */
	FUNC7(&ip->i_flags_lock);
	ip->i_flags = XFS_IRECLAIM;
	ip->i_ino = 0;
	FUNC8(&ip->i_flags_lock);
	FUNC4((struct rcu_head *)&FUNC1(ip)->i_dentry, xfs_inode_free_callback);
}