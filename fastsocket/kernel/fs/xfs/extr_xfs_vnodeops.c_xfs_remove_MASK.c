#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_23__ {int m_flags; } ;
typedef  TYPE_2__ xfs_mount_t ;
struct TYPE_22__ {int di_nlink; int /*<<< orphan*/  di_mode; } ;
struct TYPE_24__ {int /*<<< orphan*/  i_ino; TYPE_1__ i_d; TYPE_2__* i_mount; } ;
typedef  TYPE_3__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_fsblock_t ;
typedef  int /*<<< orphan*/  xfs_bmap_free_t ;
typedef  scalar_t__ uint ;
struct xfs_name {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EIO ; 
 int ENOENT ; 
 int ENOSPC ; 
 int /*<<< orphan*/  ENOTEMPTY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ XFS_DEFAULT_LOG_COUNT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int XFS_ICHGTIME_CHG ; 
 int XFS_ICHGTIME_MOD ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 int XFS_MOUNT_DIRSYNC ; 
 int XFS_MOUNT_WSYNC ; 
 scalar_t__ XFS_REMOVE_LOG_COUNT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int XFS_TRANS_ABORT ; 
 int /*<<< orphan*/  XFS_TRANS_PERM_LOG_RES ; 
 int XFS_TRANS_RELEASE_LOG_RES ; 
 int /*<<< orphan*/  XFS_TRANS_REMOVE ; 
 int /*<<< orphan*/  XFS_TRANS_RMDIR ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct xfs_name*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_3__*,struct xfs_name*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

int
FUNC25(
	xfs_inode_t             *dp,
	struct xfs_name		*name,
	xfs_inode_t		*ip)
{
	xfs_mount_t		*mp = dp->i_mount;
	xfs_trans_t             *tp = NULL;
	int			is_dir = FUNC1(ip->i_d.di_mode);
	int                     error = 0;
	xfs_bmap_free_t         free_list;
	xfs_fsblock_t           first_block;
	int			cancel_flags;
	int			committed;
	int			link_zero;
	uint			resblks;
	uint			log_count;

	FUNC6(dp, name);

	if (FUNC3(mp))
		return FUNC2(EIO);

	error = FUNC16(dp, 0);
	if (error)
		goto std_return;

	error = FUNC16(ip, 0);
	if (error)
		goto std_return;

	if (is_dir) {
		tp = FUNC17(mp, XFS_TRANS_RMDIR);
		log_count = XFS_DEFAULT_LOG_COUNT;
	} else {
		tp = FUNC17(mp, XFS_TRANS_REMOVE);
		log_count = XFS_REMOVE_LOG_COUNT;
	}
	cancel_flags = XFS_TRANS_RELEASE_LOG_RES;

	/*
	 * We try to get the real space reservation first,
	 * allowing for directory btree deletion(s) implying
	 * possible bmap insert(s).  If we can't get the space
	 * reservation then we use 0 instead, and avoid the bmap
	 * btree insert(s) in the directory code by, if the bmap
	 * insert tries to happen, instead trimming the LAST
	 * block from the directory.
	 */
	resblks = FUNC5(mp);
	error = FUNC23(tp, resblks, FUNC4(mp), 0,
				  XFS_TRANS_PERM_LOG_RES, log_count);
	if (error == ENOSPC) {
		resblks = 0;
		error = FUNC23(tp, 0, FUNC4(mp), 0,
					  XFS_TRANS_PERM_LOG_RES, log_count);
	}
	if (error) {
		FUNC0(error != ENOSPC);
		cancel_flags = 0;
		goto out_trans_cancel;
	}

	FUNC15(dp, ip, XFS_ILOCK_EXCL);

	FUNC21(tp, dp, XFS_ILOCK_EXCL);
	FUNC21(tp, ip, XFS_ILOCK_EXCL);

	/*
	 * If we're removing a directory perform some additional validation.
	 */
	cancel_flags |= XFS_TRANS_ABORT;
	if (is_dir) {
		FUNC0(ip->i_d.di_nlink >= 2);
		if (ip->i_d.di_nlink != 2) {
			error = FUNC2(ENOTEMPTY);
			goto out_trans_cancel;
		}
		if (!FUNC10(ip)) {
			error = FUNC2(ENOTEMPTY);
			goto out_trans_cancel;
		}

		/* Drop the link from ip's "..".  */
		error = FUNC12(tp, dp);
		if (error)
			goto out_trans_cancel;

		/* Drop the "." link from ip to self.  */
		error = FUNC12(tp, ip);
		if (error)
			goto out_trans_cancel;
	} else {
		/*
		 * When removing a non-directory we need to log the parent
		 * inode here.  For a directory this is done implicitly
		 * by the xfs_droplink call for the ".." entry.
		 */
		FUNC22(tp, dp, XFS_ILOG_CORE);
	}
	FUNC20(tp, dp, XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);

	/* Drop the link from dp to ip. */
	error = FUNC12(tp, ip);
	if (error)
		goto out_trans_cancel;

	/* Determine if this is the last link while the inode is locked */
	link_zero = (ip->i_d.di_nlink == 0);

	FUNC9(&free_list, &first_block);
	error = FUNC11(tp, dp, name, ip->i_ino,
					&first_block, &free_list, resblks);
	if (error) {
		FUNC0(error != ENOENT);
		goto out_bmap_cancel;
	}

	/*
	 * If this is a synchronous mount, make sure that the
	 * remove transaction goes to disk before returning to
	 * the user.
	 */
	if (mp->m_flags & (XFS_MOUNT_WSYNC|XFS_MOUNT_DIRSYNC))
		FUNC24(tp);

	error = FUNC8(&tp, &free_list, &committed);
	if (error)
		goto out_bmap_cancel;

	error = FUNC19(tp, XFS_TRANS_RELEASE_LOG_RES);
	if (error)
		goto std_return;

	/*
	 * If we are using filestreams, kill the stream association.
	 * If the file is still open it may get a new one but that
	 * will get killed on last close in xfs_close() so we don't
	 * have to worry about that.
	 */
	if (!is_dir && link_zero && FUNC14(ip))
		FUNC13(ip);

	return 0;

 out_bmap_cancel:
	FUNC7(&free_list);
 out_trans_cancel:
	FUNC18(tp, cancel_flags);
 std_return:
	return error;
}