#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
typedef  int /*<<< orphan*/  xfs_suminfo_t ;
struct TYPE_25__ {scalar_t__ sb_rblocks; int sb_rextsize; int sb_blocksize; int sb_logblocks; int sb_rbmblocks; int sb_rextents; int sb_rextslog; } ;
typedef  TYPE_2__ xfs_sb_t ;
typedef  int xfs_rtblock_t ;
struct TYPE_26__ {int m_blkbit_log; int m_rsumlevels; int m_rsumsize; TYPE_5__* m_rsumip; TYPE_5__* m_rbmip; TYPE_2__ m_sb; int /*<<< orphan*/ * m_rtdev_targp; } ;
typedef  TYPE_3__ xfs_mount_t ;
struct TYPE_27__ {scalar_t__ newblocks; int extsize; } ;
typedef  TYPE_4__ xfs_growfs_rt_t ;
typedef  int /*<<< orphan*/  xfs_fsblock_t ;
typedef  int xfs_extlen_t ;
typedef  scalar_t__ xfs_drtbno_t ;
typedef  scalar_t__ xfs_drfsbno_t ;
typedef  int /*<<< orphan*/  xfs_buf_t ;
typedef  int uint8_t ;
typedef  int uint ;
struct TYPE_24__ {int di_size; } ;
struct TYPE_28__ {TYPE_1__ i_d; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int NBBY ; 
 int FUNC1 (TYPE_3__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 int XFS_TRANS_ABORT ; 
 int /*<<< orphan*/  XFS_TRANS_GROWFSRT_FREE ; 
 int /*<<< orphan*/  XFS_TRANS_SB_FREXTENTS ; 
 int /*<<< orphan*/  XFS_TRANS_SB_RBLOCKS ; 
 int /*<<< orphan*/  XFS_TRANS_SB_RBMBLOCKS ; 
 int /*<<< orphan*/  XFS_TRANS_SB_REXTENTS ; 
 int /*<<< orphan*/  XFS_TRANS_SB_REXTSIZE ; 
 int /*<<< orphan*/  XFS_TRANS_SB_REXTSLOG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 int FUNC9 (scalar_t__,int) ; 
 TYPE_3__* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_3__*,int,int,TYPE_5__*) ; 
 void* FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC18 (TYPE_3__*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC19 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC20 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC27(
	xfs_mount_t	*mp,		/* mount point for filesystem */
	xfs_growfs_rt_t	*in)		/* growfs rt input struct */
{
	xfs_rtblock_t	bmbno;		/* bitmap block number */
	xfs_buf_t	*bp;		/* temporary buffer */
	int		error;		/* error return value */
	xfs_mount_t	*nmp;		/* new (fake) mount structure */
	xfs_drfsbno_t	nrblocks;	/* new number of realtime blocks */
	xfs_extlen_t	nrbmblocks;	/* new number of rt bitmap blocks */
	xfs_drtbno_t	nrextents;	/* new number of realtime extents */
	uint8_t		nrextslog;	/* new log2 of sb_rextents */
	xfs_extlen_t	nrsumblocks;	/* new number of summary blocks */
	uint		nrsumlevels;	/* new rt summary levels */
	uint		nrsumsize;	/* new size of rt summary, bytes */
	xfs_sb_t	*nsbp;		/* new superblock */
	xfs_extlen_t	rbmblocks;	/* current number of rt bitmap blocks */
	xfs_extlen_t	rsumblocks;	/* current number of rt summary blks */
	xfs_sb_t	*sbp;		/* old superblock */
	xfs_fsblock_t	sumbno;		/* summary block number */

	sbp = &mp->m_sb;
	/*
	 * Initial error checking.
	 */
	if (!FUNC7(CAP_SYS_ADMIN))
		return FUNC2(EPERM);
	if (mp->m_rtdev_targp == NULL || mp->m_rbmip == NULL ||
	    (nrblocks = in->newblocks) <= sbp->sb_rblocks ||
	    (sbp->sb_rblocks && (in->extsize != sbp->sb_rextsize)))
		return FUNC2(EINVAL);
	if ((error = FUNC19(sbp, nrblocks)))
		return error;
	/*
	 * Read in the last block of the device, make sure it exists.
	 */
	bp = FUNC12(mp, mp->m_rtdev_targp,
				FUNC4(mp, nrblocks - 1),
				FUNC3(mp, 1), 0);
	if (!bp)
		return EIO;
	FUNC13(bp);

	/*
	 * Calculate new parameters.  These are the final values to be reached.
	 */
	nrextents = nrblocks;
	FUNC8(nrextents, in->extsize);
	nrbmblocks = FUNC9(nrextents, NBBY * sbp->sb_blocksize);
	nrextslog = FUNC15(nrextents);
	nrsumlevels = nrextslog + 1;
	nrsumsize = (uint)sizeof(xfs_suminfo_t) * nrsumlevels * nrbmblocks;
	nrsumblocks = FUNC1(mp, nrsumsize);
	nrsumsize = FUNC3(mp, nrsumblocks);
	/*
	 * New summary size can't be more than half the size of
	 * the log.  This prevents us from getting a log overflow,
	 * since we'll log basically the whole summary file at once.
	 */
	if (nrsumblocks > (mp->m_sb.sb_logblocks >> 1))
		return FUNC2(EINVAL);
	/*
	 * Get the old block counts for bitmap and summary inodes.
	 * These can't change since other growfs callers are locked out.
	 */
	rbmblocks = FUNC1(mp, mp->m_rbmip->i_d.di_size);
	rsumblocks = FUNC1(mp, mp->m_rsumip->i_d.di_size);
	/*
	 * Allocate space to the bitmap and summary files, as necessary.
	 */
	error = FUNC14(mp, rbmblocks, nrbmblocks, mp->m_rbmip);
	if (error)
		return error;
	error = FUNC14(mp, rsumblocks, nrsumblocks, mp->m_rsumip);
	if (error)
		return error;
	/*
	 * Allocate a new (fake) mount/sb.
	 */
	nmp = FUNC10(sizeof(*nmp), KM_SLEEP);
	/*
	 * Loop over the bitmap blocks.
	 * We will do everything one bitmap block at a time.
	 * Skip the current block if it is exactly full.
	 * This also deals with the case where there were no rtextents before.
	 */
	for (bmbno = sbp->sb_rbmblocks -
		     ((sbp->sb_rextents & ((1 << mp->m_blkbit_log) - 1)) != 0);
	     bmbno < nrbmblocks;
	     bmbno++) {
		xfs_trans_t	*tp;
		int		cancelflags = 0;

		*nmp = *mp;
		nsbp = &nmp->m_sb;
		/*
		 * Calculate new sb and mount fields for this round.
		 */
		nsbp->sb_rextsize = in->extsize;
		nsbp->sb_rbmblocks = bmbno + 1;
		nsbp->sb_rblocks =
			FUNC6(nrblocks,
				  nsbp->sb_rbmblocks * NBBY *
				  nsbp->sb_blocksize * nsbp->sb_rextsize);
		nsbp->sb_rextents = nsbp->sb_rblocks;
		FUNC8(nsbp->sb_rextents, nsbp->sb_rextsize);
		FUNC0(nsbp->sb_rextents != 0);
		nsbp->sb_rextslog = FUNC15(nsbp->sb_rextents);
		nrsumlevels = nmp->m_rsumlevels = nsbp->sb_rextslog + 1;
		nrsumsize =
			(uint)sizeof(xfs_suminfo_t) * nrsumlevels *
			nsbp->sb_rbmblocks;
		nrsumblocks = FUNC1(mp, nrsumsize);
		nmp->m_rsumsize = nrsumsize = FUNC3(mp, nrsumblocks);
		/*
		 * Start a transaction, get the log reservation.
		 */
		tp = FUNC20(mp, XFS_TRANS_GROWFSRT_FREE);
		if ((error = FUNC26(tp, 0,
				FUNC5(nmp), 0, 0, 0)))
			goto error_cancel;
		/*
		 * Lock out other callers by grabbing the bitmap inode lock.
		 */
		FUNC16(mp->m_rbmip, XFS_ILOCK_EXCL);
		FUNC23(tp, mp->m_rbmip, XFS_ILOCK_EXCL);
		/*
		 * Update the bitmap inode's size.
		 */
		mp->m_rbmip->i_d.di_size =
			nsbp->sb_rbmblocks * nsbp->sb_blocksize;
		FUNC24(tp, mp->m_rbmip, XFS_ILOG_CORE);
		cancelflags |= XFS_TRANS_ABORT;
		/*
		 * Get the summary inode into the transaction.
		 */
		FUNC16(mp->m_rsumip, XFS_ILOCK_EXCL);
		FUNC23(tp, mp->m_rsumip, XFS_ILOCK_EXCL);
		/*
		 * Update the summary inode's size.
		 */
		mp->m_rsumip->i_d.di_size = nmp->m_rsumsize;
		FUNC24(tp, mp->m_rsumip, XFS_ILOG_CORE);
		/*
		 * Copy summary data from old to new sizes.
		 * Do this when the real size (not block-aligned) changes.
		 */
		if (sbp->sb_rbmblocks != nsbp->sb_rbmblocks ||
		    mp->m_rsumlevels != nmp->m_rsumlevels) {
			error = FUNC17(mp, nmp, tp);
			if (error)
				goto error_cancel;
		}
		/*
		 * Update superblock fields.
		 */
		if (nsbp->sb_rextsize != sbp->sb_rextsize)
			FUNC25(tp, XFS_TRANS_SB_REXTSIZE,
				nsbp->sb_rextsize - sbp->sb_rextsize);
		if (nsbp->sb_rbmblocks != sbp->sb_rbmblocks)
			FUNC25(tp, XFS_TRANS_SB_RBMBLOCKS,
				nsbp->sb_rbmblocks - sbp->sb_rbmblocks);
		if (nsbp->sb_rblocks != sbp->sb_rblocks)
			FUNC25(tp, XFS_TRANS_SB_RBLOCKS,
				nsbp->sb_rblocks - sbp->sb_rblocks);
		if (nsbp->sb_rextents != sbp->sb_rextents)
			FUNC25(tp, XFS_TRANS_SB_REXTENTS,
				nsbp->sb_rextents - sbp->sb_rextents);
		if (nsbp->sb_rextslog != sbp->sb_rextslog)
			FUNC25(tp, XFS_TRANS_SB_REXTSLOG,
				nsbp->sb_rextslog - sbp->sb_rextslog);
		/*
		 * Free new extent.
		 */
		bp = NULL;
		error = FUNC18(nmp, tp, sbp->sb_rextents,
			nsbp->sb_rextents - sbp->sb_rextents, &bp, &sumbno);
		if (error) {
error_cancel:
			FUNC21(tp, cancelflags);
			break;
		}
		/*
		 * Mark more blocks free in the superblock.
		 */
		FUNC25(tp, XFS_TRANS_SB_FREXTENTS,
			nsbp->sb_rextents - sbp->sb_rextents);
		/*
		 * Update mp values into the real mp structure.
		 */
		mp->m_rsumlevels = nrsumlevels;
		mp->m_rsumsize = nrsumsize;

		error = FUNC22(tp, 0);
		if (error)
			break;
	}

	/*
	 * Free the fake mp structure.
	 */
	FUNC11(nmp);

	return error;
}