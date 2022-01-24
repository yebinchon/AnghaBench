#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ ili_lock_flags; int /*<<< orphan*/  ili_item; } ;
typedef  TYPE_1__ xfs_inode_log_item_t ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {struct xfs_trans* i_transp; TYPE_1__* i_itemp; int /*<<< orphan*/  i_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_trans*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_inode*) ; 

void
FUNC5(
	struct xfs_trans	*tp,
	struct xfs_inode	*ip)
{
	xfs_inode_log_item_t	*iip;

	FUNC0(ip->i_transp == NULL);
	FUNC0(FUNC2(ip, XFS_ILOCK_EXCL));
	if (ip->i_itemp == NULL)
		FUNC1(ip, ip->i_mount);
	iip = ip->i_itemp;
	FUNC0(iip->ili_lock_flags == 0);

	/*
	 * Get a log_item_desc to point at the new item.
	 */
	FUNC3(tp, &iip->ili_item);

	FUNC4(ip);

	/*
	 * Initialize i_transp so we can find it with xfs_inode_incore()
	 * in xfs_trans_iget() above.
	 */
	ip->i_transp = tp;
}