#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_6__ ;
typedef  struct TYPE_41__   TYPE_5__ ;
typedef  struct TYPE_40__   TYPE_4__ ;
typedef  struct TYPE_39__   TYPE_3__ ;
typedef  struct TYPE_38__   TYPE_2__ ;
typedef  struct TYPE_37__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_40__ {int m_flags; int /*<<< orphan*/  m_ddev_targp; } ;
typedef  TYPE_4__ xfs_mount_t ;
struct TYPE_39__ {int di_flags; int di_size; int /*<<< orphan*/  di_format; } ;
struct TYPE_37__ {int /*<<< orphan*/  if_data; } ;
struct TYPE_38__ {int if_flags; TYPE_1__ if_u1; } ;
struct TYPE_41__ {int /*<<< orphan*/  i_ino; TYPE_3__ i_d; TYPE_2__ i_df; TYPE_4__* i_mount; } ;
typedef  TYPE_5__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_fsblock_t ;
typedef  scalar_t__ xfs_fileoff_t ;
typedef  scalar_t__ xfs_filblks_t ;
typedef  int /*<<< orphan*/  xfs_daddr_t ;
typedef  int /*<<< orphan*/  xfs_buf_t ;
struct TYPE_42__ {int /*<<< orphan*/  br_blockcount; int /*<<< orphan*/  br_startblock; } ;
typedef  TYPE_6__ xfs_bmbt_irec_t ;
typedef  int /*<<< orphan*/  xfs_bmap_free_t ;
typedef  scalar_t__ uint ;
struct xfs_name {int /*<<< orphan*/  len; } ;
struct xfs_dquot {int dummy; } ;
typedef  int /*<<< orphan*/  prid_t ;
typedef  int mode_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int MAXPATHLEN ; 
 int SYMLINK_MAPS ; 
 int S_IFLNK ; 
 int S_IFMT ; 
 int XFS_BMAPI_METADATA ; 
 int XFS_BMAPI_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int XFS_DIFLAG_NOSYMLINKS ; 
 int XFS_DIFLAG_PROJINHERIT ; 
 int /*<<< orphan*/  XFS_DINODE_FMT_LOCAL ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 int XFS_ICHGTIME_CHG ; 
 int XFS_ICHGTIME_MOD ; 
 int XFS_IFBROOT ; 
 int XFS_IFEXTENTS ; 
 int XFS_IFINLINE ; 
 int FUNC9 (TYPE_5__*) ; 
 int XFS_ILOCK_EXCL ; 
 int XFS_ILOCK_PARENT ; 
 int XFS_ILOG_CORE ; 
 int XFS_ILOG_DDATA ; 
 int FUNC10 (TYPE_4__*) ; 
 int XFS_MOUNT_DIRSYNC ; 
 int XFS_MOUNT_WSYNC ; 
 int /*<<< orphan*/  XFS_PROJID_DEFAULT ; 
 int XFS_QMOPT_INHERIT ; 
 int XFS_QMOPT_QUOTALL ; 
 int /*<<< orphan*/  XFS_SYMLINK_LOG_COUNT ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 scalar_t__ FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ XFS_TRANS_ABORT ; 
 int /*<<< orphan*/  XFS_TRANS_PERM_LOG_RES ; 
 scalar_t__ XFS_TRANS_RELEASE_LOG_RES ; 
 int /*<<< orphan*/  XFS_TRANS_SYMLINK ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC16 (char const*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,struct xfs_name*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *,TYPE_5__*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ *,scalar_t__,TYPE_6__*,int*,int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ *,TYPE_5__*,struct xfs_name*,scalar_t__) ; 
 int FUNC23 (int /*<<< orphan*/ *,TYPE_5__*,struct xfs_name*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC24 (int /*<<< orphan*/ **,TYPE_5__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_5__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,TYPE_5__*,struct xfs_dquot*,struct xfs_dquot*) ; 
 int FUNC31 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfs_dquot**,struct xfs_dquot**) ; 
 int /*<<< orphan*/ * FUNC32 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC34 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC35 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 int FUNC40 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC41 (int /*<<< orphan*/ *,TYPE_4__*,struct xfs_dquot*,struct xfs_dquot*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *) ; 

int
FUNC43(
	xfs_inode_t		*dp,
	struct xfs_name		*link_name,
	const char		*target_path,
	mode_t			mode,
	xfs_inode_t		**ipp)
{
	xfs_mount_t		*mp = dp->i_mount;
	xfs_trans_t		*tp;
	xfs_inode_t		*ip;
	int			error;
	int			pathlen;
	xfs_bmap_free_t		free_list;
	xfs_fsblock_t		first_block;
	boolean_t		unlock_dp_on_error = B_FALSE;
	uint			cancel_flags;
	int			committed;
	xfs_fileoff_t		first_fsb;
	xfs_filblks_t		fs_blocks;
	int			nmaps;
	xfs_bmbt_irec_t		mval[SYMLINK_MAPS];
	xfs_daddr_t		d;
	const char		*cur_chunk;
	int			byte_cnt;
	int			n;
	xfs_buf_t		*bp;
	prid_t			prid;
	struct xfs_dquot	*udqp, *gdqp;
	uint			resblks;

	*ipp = NULL;
	error = 0;
	ip = NULL;
	tp = NULL;

	FUNC17(dp, link_name);

	if (FUNC5(mp))
		return FUNC4(EIO);

	/*
	 * Check component lengths of the target path name.
	 */
	pathlen = FUNC16(target_path);
	if (pathlen >= MAXPATHLEN)      /* total string too long */
		return FUNC4(ENAMETOOLONG);

	udqp = gdqp = NULL;
	if (dp->i_d.di_flags & XFS_DIFLAG_PROJINHERIT)
		prid = FUNC25(dp);
	else
		prid = XFS_PROJID_DEFAULT;

	/*
	 * Make sure that we have allocated dquot(s) on disk.
	 */
	error = FUNC31(dp, FUNC14(), FUNC13(), prid,
			XFS_QMOPT_QUOTALL | XFS_QMOPT_INHERIT, &udqp, &gdqp);
	if (error)
		goto std_return;

	tp = FUNC32(mp, XFS_TRANS_SYMLINK);
	cancel_flags = XFS_TRANS_RELEASE_LOG_RES;
	/*
	 * The symlink will fit into the inode data fork?
	 * There can't be any attributes so we get the whole variable part.
	 */
	if (pathlen <= FUNC10(mp))
		fs_blocks = 0;
	else
		fs_blocks = FUNC3(mp, pathlen);
	resblks = FUNC12(mp, link_name->len, fs_blocks);
	error = FUNC40(tp, resblks, FUNC11(mp), 0,
			XFS_TRANS_PERM_LOG_RES, XFS_SYMLINK_LOG_COUNT);
	if (error == ENOSPC && fs_blocks == 0) {
		resblks = 0;
		error = FUNC40(tp, 0, FUNC11(mp), 0,
				XFS_TRANS_PERM_LOG_RES, XFS_SYMLINK_LOG_COUNT);
	}
	if (error) {
		cancel_flags = 0;
		goto error_return;
	}

	FUNC27(dp, XFS_ILOCK_EXCL | XFS_ILOCK_PARENT);
	unlock_dp_on_error = B_TRUE;

	/*
	 * Check whether the directory allows new symlinks or not.
	 */
	if (dp->i_d.di_flags & XFS_DIFLAG_NOSYMLINKS) {
		error = FUNC4(EPERM);
		goto error_return;
	}

	/*
	 * Reserve disk quota : blocks and inode.
	 */
	error = FUNC41(tp, mp, udqp, gdqp, resblks, 1, 0);
	if (error)
		goto error_return;

	/*
	 * Check for ability to enter directory entry, if no space reserved.
	 */
	error = FUNC22(tp, dp, link_name, resblks);
	if (error)
		goto error_return;
	/*
	 * Initialize the bmap freelist prior to calling either
	 * bmapi or the directory create code.
	 */
	FUNC20(&free_list, &first_block);

	/*
	 * Allocate an inode for the symlink.
	 */
	error = FUNC24(&tp, dp, S_IFLNK | (mode & ~S_IFMT), 1, 0,
			       prid, resblks > 0, &ip, NULL);
	if (error) {
		if (error == ENOSPC)
			goto error_return;
		goto error1;
	}

	/*
	 * An error after we've joined dp to the transaction will result in the
	 * transaction cancel unlocking dp so don't do it explicitly in the
	 * error path.
	 */
	FUNC37(tp, dp, XFS_ILOCK_EXCL);
	unlock_dp_on_error = B_FALSE;

	/*
	 * Also attach the dquot(s) to it, if applicable.
	 */
	FUNC30(tp, ip, udqp, gdqp);

	if (resblks)
		resblks -= FUNC8(mp);
	/*
	 * If the symlink will fit into the inode, write it inline.
	 */
	if (pathlen <= FUNC9(ip)) {
		FUNC26(ip, pathlen, XFS_DATA_FORK);
		FUNC15(ip->i_df.if_u1.if_data, target_path, pathlen);
		ip->i_d.di_size = pathlen;

		/*
		 * The inode was initially created in extent format.
		 */
		ip->i_df.if_flags &= ~(XFS_IFEXTENTS | XFS_IFBROOT);
		ip->i_df.if_flags |= XFS_IFINLINE;

		ip->i_d.di_format = XFS_DINODE_FMT_LOCAL;
		FUNC39(tp, ip, XFS_ILOG_DDATA | XFS_ILOG_CORE);

	} else {
		first_fsb = 0;
		nmaps = SYMLINK_MAPS;

		error = FUNC21(tp, ip, first_fsb, fs_blocks,
				  XFS_BMAPI_WRITE | XFS_BMAPI_METADATA,
				  &first_block, resblks, mval, &nmaps,
				  &free_list);
		if (error)
			goto error2;

		if (resblks)
			resblks -= fs_blocks;
		ip->i_d.di_size = pathlen;
		FUNC39(tp, ip, XFS_ILOG_CORE);

		cur_chunk = target_path;
		for (n = 0; n < nmaps; n++) {
			d = FUNC7(mp, mval[n].br_startblock);
			byte_cnt = FUNC6(mp, mval[n].br_blockcount);
			bp = FUNC35(tp, mp->m_ddev_targp, d,
					       FUNC0(byte_cnt), 0);
			if (!bp) {
				error = ENOMEM;
				goto error2;
			}
			if (pathlen < byte_cnt) {
				byte_cnt = pathlen;
			}
			pathlen -= byte_cnt;

			FUNC15(FUNC2(bp), cur_chunk, byte_cnt);
			cur_chunk += byte_cnt;

			FUNC38(tp, bp, 0, byte_cnt - 1);
		}
	}

	/*
	 * Create the directory entry for the symlink.
	 */
	error = FUNC23(tp, dp, link_name, ip->i_ino,
					&first_block, &free_list, resblks);
	if (error)
		goto error2;
	FUNC36(tp, dp, XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);
	FUNC39(tp, dp, XFS_ILOG_CORE);

	/*
	 * If this is a synchronous mount, make sure that the
	 * symlink transaction goes to disk before returning to
	 * the user.
	 */
	if (mp->m_flags & (XFS_MOUNT_WSYNC|XFS_MOUNT_DIRSYNC)) {
		FUNC42(tp);
	}

	error = FUNC19(&tp, &free_list, &committed);
	if (error) {
		goto error2;
	}
	error = FUNC34(tp, XFS_TRANS_RELEASE_LOG_RES);
	FUNC29(udqp);
	FUNC29(gdqp);

	*ipp = ip;
	return 0;

 error2:
	FUNC1(ip);
 error1:
	FUNC18(&free_list);
	cancel_flags |= XFS_TRANS_ABORT;
 error_return:
	FUNC33(tp, cancel_flags);
	FUNC29(udqp);
	FUNC29(gdqp);

	if (unlock_dp_on_error)
		FUNC28(dp, XFS_ILOCK_EXCL);
 std_return:
	return error;
}