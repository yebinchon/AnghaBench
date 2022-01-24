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
typedef  scalar_t__ xfs_qcnt_t ;
typedef  scalar_t__ xfs_dqid_t ;
typedef  int /*<<< orphan*/  xfs_disk_dquot_t ;
typedef  int /*<<< orphan*/  uint ;
struct xfs_trans {int dummy; } ;
struct xfs_quotainfo {int /*<<< orphan*/  qi_quotaofflock; int /*<<< orphan*/  qi_rtbwarnlimit; int /*<<< orphan*/  qi_iwarnlimit; int /*<<< orphan*/  qi_bwarnlimit; int /*<<< orphan*/  qi_rtbtimelimit; int /*<<< orphan*/  qi_itimelimit; int /*<<< orphan*/  qi_btimelimit; scalar_t__ qi_isoftlimit; scalar_t__ qi_ihardlimit; scalar_t__ qi_rtbsoftlimit; scalar_t__ qi_rtbhardlimit; scalar_t__ qi_bsoftlimit; scalar_t__ qi_bhardlimit; } ;
struct xfs_mount {struct xfs_quotainfo* m_quotainfo; } ;
struct xfs_disk_dquot {void* d_rtbtimer; void* d_itimer; void* d_btimer; void* d_rtbwarns; void* d_iwarns; void* d_bwarns; void* d_ino_softlimit; void* d_ino_hardlimit; void* d_rtb_softlimit; void* d_rtb_hardlimit; void* d_blk_softlimit; void* d_blk_hardlimit; } ;
struct xfs_dquot {int /*<<< orphan*/  dq_flags; struct xfs_disk_dquot q_core; } ;
struct TYPE_3__ {int d_fieldmask; int /*<<< orphan*/  d_rtbwarns; int /*<<< orphan*/  d_iwarns; int /*<<< orphan*/  d_bwarns; int /*<<< orphan*/  d_rtbtimer; int /*<<< orphan*/  d_itimer; int /*<<< orphan*/  d_btimer; scalar_t__ d_ino_softlimit; scalar_t__ d_ino_hardlimit; int /*<<< orphan*/  d_rtb_softlimit; int /*<<< orphan*/  d_rtb_hardlimit; int /*<<< orphan*/  d_blk_softlimit; int /*<<< orphan*/  d_blk_hardlimit; } ;
typedef  TYPE_1__ fs_disk_quota_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOENT ; 
 int FS_DQ_BHARD ; 
 int FS_DQ_BSOFT ; 
 int FS_DQ_BTIMER ; 
 int FS_DQ_BWARNS ; 
 int FS_DQ_IHARD ; 
 int FS_DQ_ISOFT ; 
 int FS_DQ_ITIMER ; 
 int FS_DQ_IWARNS ; 
 int FS_DQ_RTBHARD ; 
 int FS_DQ_RTBSOFT ; 
 int FS_DQ_RTBTIMER ; 
 int FS_DQ_RTBWARNS ; 
 scalar_t__ FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_DEFAULT_LOG_COUNT ; 
 int /*<<< orphan*/  XFS_DQ_DIRTY ; 
 int XFS_DQ_MASK ; 
 int /*<<< orphan*/  XFS_QMOPT_DQALLOC ; 
 int /*<<< orphan*/  XFS_TRANS_ABORT ; 
 int /*<<< orphan*/  XFS_TRANS_QM_SETQLIM ; 
 scalar_t__ FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_mount*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_mount*,struct xfs_disk_dquot*) ; 
 int FUNC11 (struct xfs_mount*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_dquot**) ; 
 int /*<<< orphan*/  FUNC12 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC13 (struct xfs_dquot*) ; 
 struct xfs_trans* FUNC14 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct xfs_trans*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct xfs_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct xfs_trans*,struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC18 (struct xfs_trans*,struct xfs_dquot*) ; 
 int FUNC19 (struct xfs_trans*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC20(
	struct xfs_mount	*mp,
	xfs_dqid_t		id,
	uint			type,
	fs_disk_quota_t		*newlim)
{
	struct xfs_quotainfo	*q = mp->m_quotainfo;
	struct xfs_disk_dquot	*ddq;
	struct xfs_dquot	*dqp;
	struct xfs_trans	*tp;
	int			error;
	xfs_qcnt_t		hard, soft;

	if (newlim->d_fieldmask & ~XFS_DQ_MASK)
		return EINVAL;
	if ((newlim->d_fieldmask & XFS_DQ_MASK) == 0)
		return 0;

	tp = FUNC14(mp, XFS_TRANS_QM_SETQLIM);
	if ((error = FUNC19(tp, 0, sizeof(xfs_disk_dquot_t) + 128,
				      0, 0, XFS_DEFAULT_LOG_COUNT))) {
		FUNC15(tp, 0);
		return (error);
	}

	/*
	 * We don't want to race with a quotaoff so take the quotaoff lock.
	 * (We don't hold an inode lock, so there's nothing else to stop
	 * a quotaoff from happening). (XXXThis doesn't currently happen
	 * because we take the vfslock before calling xfs_qm_sysent).
	 */
	FUNC6(&q->qi_quotaofflock);

	/*
	 * Get the dquot (locked), and join it to the transaction.
	 * Allocate the dquot if this doesn't exist.
	 */
	if ((error = FUNC11(mp, NULL, id, type, XFS_QMOPT_DQALLOC, &dqp))) {
		FUNC15(tp, XFS_TRANS_ABORT);
		FUNC0(error != ENOENT);
		goto out_unlock;
	}
	FUNC17(tp, dqp);
	ddq = &dqp->q_core;

	/*
	 * Make sure that hardlimits are >= soft limits before changing.
	 */
	hard = (newlim->d_fieldmask & FS_DQ_BHARD) ?
		(xfs_qcnt_t) FUNC1(mp, newlim->d_blk_hardlimit) :
			FUNC2(ddq->d_blk_hardlimit);
	soft = (newlim->d_fieldmask & FS_DQ_BSOFT) ?
		(xfs_qcnt_t) FUNC1(mp, newlim->d_blk_softlimit) :
			FUNC2(ddq->d_blk_softlimit);
	if (hard == 0 || hard >= soft) {
		ddq->d_blk_hardlimit = FUNC5(hard);
		ddq->d_blk_softlimit = FUNC5(soft);
		FUNC9(dqp);
		if (id == 0) {
			q->qi_bhardlimit = hard;
			q->qi_bsoftlimit = soft;
		}
	} else {
		FUNC8(mp, "blkhard %Ld < blksoft %Ld\n", hard, soft);
	}
	hard = (newlim->d_fieldmask & FS_DQ_RTBHARD) ?
		(xfs_qcnt_t) FUNC1(mp, newlim->d_rtb_hardlimit) :
			FUNC2(ddq->d_rtb_hardlimit);
	soft = (newlim->d_fieldmask & FS_DQ_RTBSOFT) ?
		(xfs_qcnt_t) FUNC1(mp, newlim->d_rtb_softlimit) :
			FUNC2(ddq->d_rtb_softlimit);
	if (hard == 0 || hard >= soft) {
		ddq->d_rtb_hardlimit = FUNC5(hard);
		ddq->d_rtb_softlimit = FUNC5(soft);
		if (id == 0) {
			q->qi_rtbhardlimit = hard;
			q->qi_rtbsoftlimit = soft;
		}
	} else {
		FUNC8(mp, "rtbhard %Ld < rtbsoft %Ld\n", hard, soft);
	}

	hard = (newlim->d_fieldmask & FS_DQ_IHARD) ?
		(xfs_qcnt_t) newlim->d_ino_hardlimit :
			FUNC2(ddq->d_ino_hardlimit);
	soft = (newlim->d_fieldmask & FS_DQ_ISOFT) ?
		(xfs_qcnt_t) newlim->d_ino_softlimit :
			FUNC2(ddq->d_ino_softlimit);
	if (hard == 0 || hard >= soft) {
		ddq->d_ino_hardlimit = FUNC5(hard);
		ddq->d_ino_softlimit = FUNC5(soft);
		if (id == 0) {
			q->qi_ihardlimit = hard;
			q->qi_isoftlimit = soft;
		}
	} else {
		FUNC8(mp, "ihard %Ld < isoft %Ld\n", hard, soft);
	}

	/*
	 * Update warnings counter(s) if requested
	 */
	if (newlim->d_fieldmask & FS_DQ_BWARNS)
		ddq->d_bwarns = FUNC3(newlim->d_bwarns);
	if (newlim->d_fieldmask & FS_DQ_IWARNS)
		ddq->d_iwarns = FUNC3(newlim->d_iwarns);
	if (newlim->d_fieldmask & FS_DQ_RTBWARNS)
		ddq->d_rtbwarns = FUNC3(newlim->d_rtbwarns);

	if (id == 0) {
		/*
		 * Timelimits for the super user set the relative time
		 * the other users can be over quota for this file system.
		 * If it is zero a default is used.  Ditto for the default
		 * soft and hard limit values (already done, above), and
		 * for warnings.
		 */
		if (newlim->d_fieldmask & FS_DQ_BTIMER) {
			q->qi_btimelimit = newlim->d_btimer;
			ddq->d_btimer = FUNC4(newlim->d_btimer);
		}
		if (newlim->d_fieldmask & FS_DQ_ITIMER) {
			q->qi_itimelimit = newlim->d_itimer;
			ddq->d_itimer = FUNC4(newlim->d_itimer);
		}
		if (newlim->d_fieldmask & FS_DQ_RTBTIMER) {
			q->qi_rtbtimelimit = newlim->d_rtbtimer;
			ddq->d_rtbtimer = FUNC4(newlim->d_rtbtimer);
		}
		if (newlim->d_fieldmask & FS_DQ_BWARNS)
			q->qi_bwarnlimit = newlim->d_bwarns;
		if (newlim->d_fieldmask & FS_DQ_IWARNS)
			q->qi_iwarnlimit = newlim->d_iwarns;
		if (newlim->d_fieldmask & FS_DQ_RTBWARNS)
			q->qi_rtbwarnlimit = newlim->d_rtbwarns;
	} else {
		/*
		 * If the user is now over quota, start the timelimit.
		 * The user will not be 'warned'.
		 * Note that we keep the timers ticking, whether enforcement
		 * is on or off. We don't really want to bother with iterating
		 * over all ondisk dquots and turning the timers on/off.
		 */
		FUNC10(mp, ddq);
	}
	dqp->dq_flags |= XFS_DQ_DIRTY;
	FUNC18(tp, dqp);

	error = FUNC16(tp, 0);
	FUNC12(dqp);
	FUNC13(dqp);

 out_unlock:
	FUNC7(&q->qi_quotaofflock);
	return error;
}