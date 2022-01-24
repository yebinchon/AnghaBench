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
struct TYPE_2__ {int di_flags; scalar_t__ di_nlink; } ;
struct xfs_inode {int /*<<< orphan*/  i_ino; TYPE_1__ i_d; struct xfs_mount* i_mount; } ;
typedef  struct xfs_inode xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_fsblock_t ;
typedef  int /*<<< orphan*/  xfs_dev_t ;
typedef  int /*<<< orphan*/  xfs_bmap_free_t ;
typedef  scalar_t__ uint ;
struct xfs_trans {int dummy; } ;
struct xfs_name {int /*<<< orphan*/  len; } ;
struct xfs_mount {int m_flags; } ;
struct xfs_dquot {int dummy; } ;
typedef  int /*<<< orphan*/  prid_t ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  EMLINK ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_inode*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ XFS_CREATE_LOG_COUNT ; 
 scalar_t__ FUNC3 (struct xfs_mount*) ; 
 scalar_t__ FUNC4 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int XFS_DIFLAG_PROJINHERIT ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct xfs_mount*) ; 
 scalar_t__ FUNC7 (struct xfs_mount*) ; 
 int XFS_ICHGTIME_CHG ; 
 int XFS_ICHGTIME_MOD ; 
 int XFS_ILOCK_EXCL ; 
 int XFS_ILOCK_PARENT ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 scalar_t__ XFS_MAXLINK ; 
 scalar_t__ XFS_MKDIR_LOG_COUNT ; 
 scalar_t__ FUNC8 (struct xfs_mount*) ; 
 scalar_t__ FUNC9 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int XFS_MOUNT_DIRSYNC ; 
 int XFS_MOUNT_WSYNC ; 
 int /*<<< orphan*/  XFS_PROJID_DEFAULT ; 
 int XFS_QMOPT_INHERIT ; 
 int XFS_QMOPT_QUOTALL ; 
 scalar_t__ XFS_TRANS_ABORT ; 
 int /*<<< orphan*/  XFS_TRANS_CREATE ; 
 int /*<<< orphan*/  XFS_TRANS_MKDIR ; 
 int /*<<< orphan*/  XFS_TRANS_PERM_LOG_RES ; 
 scalar_t__ XFS_TRANS_RELEASE_LOG_RES ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct xfs_inode*,struct xfs_name*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct xfs_trans**,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct xfs_trans*,struct xfs_inode*) ; 
 int FUNC17 (struct xfs_trans*,struct xfs_inode*,struct xfs_name*,scalar_t__) ; 
 int FUNC18 (struct xfs_trans*,struct xfs_inode*,struct xfs_name*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC19 (struct xfs_trans**,struct xfs_inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfs_inode**,int*) ; 
 int FUNC20 (struct xfs_trans*,struct xfs_inode*,struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC22 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC23 (struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC26 (struct xfs_trans*,struct xfs_inode*,struct xfs_dquot*,struct xfs_dquot*) ; 
 int FUNC27 (struct xfs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfs_dquot**,struct xfs_dquot**) ; 
 struct xfs_trans* FUNC28 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct xfs_trans*,scalar_t__) ; 
 int FUNC30 (struct xfs_trans*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 (struct xfs_trans*,struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC32 (struct xfs_trans*,struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC33 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC34 (struct xfs_trans*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC35 (struct xfs_trans*,struct xfs_mount*,struct xfs_dquot*,struct xfs_dquot*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct xfs_trans*) ; 

int
FUNC37(
	xfs_inode_t		*dp,
	struct xfs_name		*name,
	mode_t			mode,
	xfs_dev_t		rdev,
	xfs_inode_t		**ipp)
{
	int			is_dir = FUNC2(mode);
	struct xfs_mount	*mp = dp->i_mount;
	struct xfs_inode	*ip = NULL;
	struct xfs_trans	*tp = NULL;
	int			error;
	xfs_bmap_free_t		free_list;
	xfs_fsblock_t		first_block;
	boolean_t		unlock_dp_on_error = B_FALSE;
	uint			cancel_flags;
	int			committed;
	prid_t			prid;
	struct xfs_dquot	*udqp = NULL;
	struct xfs_dquot	*gdqp = NULL;
	uint			resblks;
	uint			log_res;
	uint			log_count;

	FUNC12(dp, name);

	if (FUNC6(mp))
		return FUNC5(EIO);

	if (dp->i_d.di_flags & XFS_DIFLAG_PROJINHERIT)
		prid = FUNC22(dp);
	else
		prid = XFS_PROJID_DEFAULT;

	/*
	 * Make sure that we have allocated dquot(s) on disk.
	 */
	error = FUNC27(dp, FUNC11(), FUNC10(), prid,
			XFS_QMOPT_QUOTALL | XFS_QMOPT_INHERIT, &udqp, &gdqp);
	if (error)
		return error;

	if (is_dir) {
		rdev = 0;
		resblks = FUNC9(mp, name->len);
		log_res = FUNC8(mp);
		log_count = XFS_MKDIR_LOG_COUNT;
		tp = FUNC28(mp, XFS_TRANS_MKDIR);
	} else {
		resblks = FUNC4(mp, name->len);
		log_res = FUNC3(mp);
		log_count = XFS_CREATE_LOG_COUNT;
		tp = FUNC28(mp, XFS_TRANS_CREATE);
	}

	cancel_flags = XFS_TRANS_RELEASE_LOG_RES;

	/*
	 * Initially assume that the file does not exist and
	 * reserve the resources for that case.  If that is not
	 * the case we'll drop the one we have and get a more
	 * appropriate transaction later.
	 */
	error = FUNC34(tp, resblks, log_res, 0,
			XFS_TRANS_PERM_LOG_RES, log_count);
	if (error == ENOSPC) {
		/* flush outstanding delalloc blocks and retry */
		FUNC21(dp);
		error = FUNC34(tp, resblks, log_res, 0,
				XFS_TRANS_PERM_LOG_RES, log_count);
	}
	if (error == ENOSPC) {
		/* No space at all so try a "no-allocation" reservation */
		resblks = 0;
		error = FUNC34(tp, 0, log_res, 0,
				XFS_TRANS_PERM_LOG_RES, log_count);
	}
	if (error) {
		cancel_flags = 0;
		goto out_trans_cancel;
	}

	FUNC23(dp, XFS_ILOCK_EXCL | XFS_ILOCK_PARENT);
	unlock_dp_on_error = B_TRUE;

	/*
	 * Check for directory link count overflow.
	 */
	if (is_dir && dp->i_d.di_nlink >= XFS_MAXLINK) {
		error = FUNC5(EMLINK);
		goto out_trans_cancel;
	}

	FUNC15(&free_list, &first_block);

	/*
	 * Reserve disk quota and the inode.
	 */
	error = FUNC35(tp, mp, udqp, gdqp, resblks, 1, 0);
	if (error)
		goto out_trans_cancel;

	error = FUNC17(tp, dp, name, resblks);
	if (error)
		goto out_trans_cancel;

	/*
	 * A newly created regular or special file just has one directory
	 * entry pointing to them, but a directory also the "." entry
	 * pointing to itself.
	 */
	error = FUNC19(&tp, dp, mode, is_dir ? 2 : 1, rdev,
			       prid, resblks > 0, &ip, &committed);
	if (error) {
		if (error == ENOSPC)
			goto out_trans_cancel;
		goto out_trans_abort;
	}

	/*
	 * Now we join the directory inode to the transaction.  We do not do it
	 * earlier because xfs_dir_ialloc might commit the previous transaction
	 * (and release all the locks).  An error from here on will result in
	 * the transaction cancel unlocking dp so don't do it explicitly in the
	 * error path.
	 */
	FUNC32(tp, dp, XFS_ILOCK_EXCL);
	unlock_dp_on_error = B_FALSE;

	error = FUNC18(tp, dp, name, ip->i_ino,
					&first_block, &free_list, resblks ?
					resblks - FUNC7(mp) : 0);
	if (error) {
		FUNC0(error != ENOSPC);
		goto out_trans_abort;
	}
	FUNC31(tp, dp, XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);
	FUNC33(tp, dp, XFS_ILOG_CORE);

	if (is_dir) {
		error = FUNC20(tp, ip, dp);
		if (error)
			goto out_bmap_cancel;

		error = FUNC16(tp, dp);
		if (error)
			goto out_bmap_cancel;
	}

	/*
	 * If this is a synchronous mount, make sure that the
	 * create transaction goes to disk before returning to
	 * the user.
	 */
	if (mp->m_flags & (XFS_MOUNT_WSYNC|XFS_MOUNT_DIRSYNC))
		FUNC36(tp);

	/*
	 * Attach the dquot(s) to the inodes and modify them incore.
	 * These ids of the inode couldn't have changed since the new
	 * inode has been locked ever since it was created.
	 */
	FUNC26(tp, ip, udqp, gdqp);

	error = FUNC14(&tp, &free_list, &committed);
	if (error)
		goto out_bmap_cancel;

	error = FUNC30(tp, XFS_TRANS_RELEASE_LOG_RES);
	if (error)
		goto out_release_inode;

	FUNC25(udqp);
	FUNC25(gdqp);

	*ipp = ip;
	return 0;

 out_bmap_cancel:
	FUNC13(&free_list);
 out_trans_abort:
	cancel_flags |= XFS_TRANS_ABORT;
 out_trans_cancel:
	FUNC29(tp, cancel_flags);
 out_release_inode:
	/*
	 * Wait until after the current transaction is aborted to
	 * release the inode.  This prevents recursive transactions
	 * and deadlocks from xfs_inactive.
	 */
	if (ip)
		FUNC1(ip);

	FUNC25(udqp);
	FUNC25(gdqp);

	if (unlock_dp_on_error)
		FUNC24(dp, XFS_ILOCK_EXCL);
	return error;
}