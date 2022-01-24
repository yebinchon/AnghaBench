#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_ufsize_t ;
typedef  int /*<<< orphan*/  xfs_trans_t ;
typedef  scalar_t__ xfs_off_t ;
struct TYPE_27__ {scalar_t__ sb_rextsize; } ;
struct TYPE_28__ {TYPE_1__ m_sb; } ;
typedef  TYPE_2__ xfs_mount_t ;
struct TYPE_29__ {TYPE_2__* i_mount; } ;
typedef  TYPE_3__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_fsblock_t ;
typedef  scalar_t__ xfs_fileoff_t ;
typedef  scalar_t__ xfs_filblks_t ;
typedef  scalar_t__ xfs_extlen_t ;
struct TYPE_30__ {scalar_t__ br_startblock; scalar_t__ br_startoff; scalar_t__ br_blockcount; } ;
typedef  TYPE_4__ xfs_bmbt_irec_t ;
typedef  int /*<<< orphan*/  xfs_bmap_free_t ;
typedef  scalar_t__ uint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 scalar_t__ HOLESTARTBLOCK ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int XFS_BMAPI_PREALLOC ; 
 int XFS_BMAPI_WRITE ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*,scalar_t__) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_3__*) ; 
 int XFS_QMOPT_RES_REGBLKS ; 
 int XFS_QMOPT_RES_RTBLKS ; 
 int XFS_TRANS_ABORT ; 
 int /*<<< orphan*/  XFS_TRANS_DIOSTRAT ; 
 int /*<<< orphan*/  XFS_TRANS_PERM_LOG_RES ; 
 int XFS_TRANS_RELEASE_LOG_RES ; 
 int /*<<< orphan*/  XFS_WRITE_LOG_COUNT ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (int) ; 
 int FUNC11 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_3__*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_2__*,TYPE_3__*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC20 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 int FUNC23 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC25 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC26 (int /*<<< orphan*/ *,TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int) ; 

int
FUNC28(
	xfs_inode_t	*ip,
	xfs_off_t	offset,
	size_t		count,
	xfs_bmbt_irec_t *imap,
	int		nmaps)
{
	xfs_mount_t	*mp = ip->i_mount;
	xfs_fileoff_t	offset_fsb;
	xfs_fileoff_t	last_fsb;
	xfs_filblks_t	count_fsb, resaligned;
	xfs_fsblock_t	firstfsb;
	xfs_extlen_t	extsz, temp;
	int		nimaps;
	int		bmapi_flag;
	int		quota_flag;
	int		rt;
	xfs_trans_t	*tp;
	xfs_bmap_free_t free_list;
	uint		qblocks, resblks, resrtextents;
	int		committed;
	int		error;

	error = FUNC20(ip, 0);
	if (error)
		return FUNC5(error);

	rt = FUNC7(ip);
	extsz = FUNC16(ip);

	offset_fsb = FUNC3(mp, offset);
	last_fsb = FUNC2(mp, ((xfs_ufsize_t)(offset + count)));
	if ((offset + count) > FUNC6(ip)) {
		error = FUNC18(mp, ip, extsz, &last_fsb);
		if (error)
			return FUNC5(error);
	} else {
		if (nmaps && (imap->br_startblock == HOLESTARTBLOCK))
			last_fsb = FUNC1(last_fsb, (xfs_fileoff_t)
					imap->br_blockcount +
					imap->br_startoff);
	}
	count_fsb = last_fsb - offset_fsb;
	FUNC0(count_fsb > 0);

	resaligned = count_fsb;
	if (FUNC10(extsz)) {
		if ((temp = FUNC9(offset_fsb, extsz)))
			resaligned += temp;
		if ((temp = FUNC9(resaligned, extsz)))
			resaligned += extsz - temp;
	}

	if (FUNC10(rt)) {
		resrtextents = qblocks = resaligned;
		resrtextents /= mp->m_sb.sb_rextsize;
		resblks = FUNC4(mp, 0);
		quota_flag = XFS_QMOPT_RES_RTBLKS;
	} else {
		resrtextents = 0;
		resblks = qblocks = FUNC4(mp, resaligned);
		quota_flag = XFS_QMOPT_RES_REGBLKS;
	}

	/*
	 * Allocate and setup the transaction
	 */
	tp = FUNC21(mp, XFS_TRANS_DIOSTRAT);
	error = FUNC25(tp, resblks,
			FUNC8(mp), resrtextents,
			XFS_TRANS_PERM_LOG_RES,
			XFS_WRITE_LOG_COUNT);
	/*
	 * Check for running out of space, note: need lock to return
	 */
	if (error) {
		FUNC22(tp, 0);
		return FUNC5(error);
	}

	FUNC17(ip, XFS_ILOCK_EXCL);

	error = FUNC26(tp, ip, qblocks, 0, quota_flag);
	if (error)
		goto out_trans_cancel;

	FUNC24(tp, ip);

	bmapi_flag = XFS_BMAPI_WRITE;
	if (offset < FUNC6(ip) || extsz)
		bmapi_flag |= XFS_BMAPI_PREALLOC;

	/*
	 * Issue the xfs_bmapi() call to allocate the blocks.
	 *
	 * From this point onwards we overwrite the imap pointer that the
	 * caller gave to us.
	 */
	FUNC14(&free_list, &firstfsb);
	nimaps = 1;
	error = FUNC15(tp, ip, offset_fsb, count_fsb, bmapi_flag,
		&firstfsb, 0, imap, &nimaps, &free_list);
	if (error)
		goto out_bmap_cancel;

	/*
	 * Complete the transaction
	 */
	error = FUNC13(&tp, &free_list, &committed);
	if (error)
		goto out_bmap_cancel;
	error = FUNC23(tp, XFS_TRANS_RELEASE_LOG_RES);
	if (error)
		goto out_unlock;

	/*
	 * Copy any maps to caller's array and return any error.
	 */
	if (nimaps == 0) {
		error = FUNC5(ENOSPC);
		goto out_unlock;
	}

	if (!(imap->br_startblock || FUNC7(ip)))
		error = FUNC11(ip, imap);

out_unlock:
	FUNC19(ip, XFS_ILOCK_EXCL);
	return error;

out_bmap_cancel:
	FUNC12(&free_list);
	FUNC27(tp, ip, qblocks, 0, quota_flag);
out_trans_cancel:
	FUNC22(tp, XFS_TRANS_RELEASE_LOG_RES | XFS_TRANS_ABORT);
	goto out_unlock;
}