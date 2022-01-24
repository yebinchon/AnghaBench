#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_12__ {scalar_t__ di_aformat; } ;
struct TYPE_13__ {TYPE_1__ i_d; int /*<<< orphan*/ * i_mount; } ;
typedef  TYPE_2__ xfs_inode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_ATTRINVAL_LOG_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 scalar_t__ XFS_DINODE_FMT_LOCAL ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_ILOCK_SHARED ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int XFS_TRANS_ABORT ; 
 int /*<<< orphan*/  XFS_TRANS_ATTRINVAL ; 
 int /*<<< orphan*/  XFS_TRANS_PERM_LOG_RES ; 
 int XFS_TRANS_RELEASE_LOG_RES ; 
 int FUNC3 (int /*<<< orphan*/ **,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ **,TYPE_2__*,long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int								/* error */
FUNC14(xfs_inode_t *dp)
{
	xfs_trans_t *trans;
	xfs_mount_t *mp;
	int error;

	mp = dp->i_mount;
	FUNC0(! FUNC2(mp, dp));

	FUNC4(dp, XFS_ILOCK_SHARED);
	if (!FUNC5(dp) ||
	    dp->i_d.di_aformat == XFS_DINODE_FMT_LOCAL) {
		FUNC7(dp, XFS_ILOCK_SHARED);
		return 0;
	}
	FUNC7(dp, XFS_ILOCK_SHARED);

	/*
	 * Start our first transaction of the day.
	 *
	 * All future transactions during this code must be "chained" off
	 * this one via the trans_dup() call.  All transactions will contain
	 * the inode, and the inode will always be marked with trans_ihold().
	 * Since the inode will be locked in all transactions, we must log
	 * the inode in every transaction to let it float upward through
	 * the log.
	 */
	trans = FUNC8(mp, XFS_TRANS_ATTRINVAL);
	if ((error = FUNC13(trans, 0, FUNC1(mp), 0,
				      XFS_TRANS_PERM_LOG_RES,
				      XFS_ATTRINVAL_LOG_COUNT))) {
		FUNC9(trans, 0);
		return(error);
	}
	FUNC4(dp, XFS_ILOCK_EXCL);

	/*
	 * No need to make quota reservations here. We expect to release some
	 * blocks, not allocate, in the common case.
	 */
	FUNC11(trans, dp);

	/*
	 * Decide on what work routines to call based on the inode size.
	 */
	if (!FUNC5(dp) ||
	    dp->i_d.di_aformat == XFS_DINODE_FMT_LOCAL) {
		error = 0;
		goto out;
	}
	error = FUNC3(&trans, dp);
	if (error)
		goto out;

	error = FUNC6(&trans, dp, 0LL, XFS_ATTR_FORK);
	if (error)
		goto out;

	/*
	 * Commit the last in the sequence of transactions.
	 */
	FUNC12(trans, dp, XFS_ILOG_CORE);
	error = FUNC10(trans, XFS_TRANS_RELEASE_LOG_RES);
	FUNC7(dp, XFS_ILOCK_EXCL);

	return(error);

out:
	FUNC9(trans, XFS_TRANS_RELEASE_LOG_RES|XFS_TRANS_ABORT);
	FUNC7(dp, XFS_ILOCK_EXCL);
	return(error);
}