
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xfs_qcnt_t ;
typedef scalar_t__ xfs_dqid_t ;
typedef int xfs_disk_dquot_t ;
typedef int uint ;
struct xfs_trans {int dummy; } ;
struct xfs_quotainfo {int qi_quotaofflock; int qi_rtbwarnlimit; int qi_iwarnlimit; int qi_bwarnlimit; int qi_rtbtimelimit; int qi_itimelimit; int qi_btimelimit; scalar_t__ qi_isoftlimit; scalar_t__ qi_ihardlimit; scalar_t__ qi_rtbsoftlimit; scalar_t__ qi_rtbhardlimit; scalar_t__ qi_bsoftlimit; scalar_t__ qi_bhardlimit; } ;
struct xfs_mount {struct xfs_quotainfo* m_quotainfo; } ;
struct xfs_disk_dquot {void* d_rtbtimer; void* d_itimer; void* d_btimer; void* d_rtbwarns; void* d_iwarns; void* d_bwarns; void* d_ino_softlimit; void* d_ino_hardlimit; void* d_rtb_softlimit; void* d_rtb_hardlimit; void* d_blk_softlimit; void* d_blk_hardlimit; } ;
struct xfs_dquot {int dq_flags; struct xfs_disk_dquot q_core; } ;
struct TYPE_3__ {int d_fieldmask; int d_rtbwarns; int d_iwarns; int d_bwarns; int d_rtbtimer; int d_itimer; int d_btimer; scalar_t__ d_ino_softlimit; scalar_t__ d_ino_hardlimit; int d_rtb_softlimit; int d_rtb_hardlimit; int d_blk_softlimit; int d_blk_hardlimit; } ;
typedef TYPE_1__ fs_disk_quota_t ;


 int ASSERT (int) ;
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
 scalar_t__ XFS_BB_TO_FSB (struct xfs_mount*,int ) ;
 int XFS_DEFAULT_LOG_COUNT ;
 int XFS_DQ_DIRTY ;
 int XFS_DQ_MASK ;
 int XFS_QMOPT_DQALLOC ;
 int XFS_TRANS_ABORT ;
 int XFS_TRANS_QM_SETQLIM ;
 scalar_t__ be64_to_cpu (void*) ;
 void* cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int ) ;
 void* cpu_to_be64 (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xfs_debug (struct xfs_mount*,char*,scalar_t__,scalar_t__) ;
 int xfs_dquot_set_prealloc_limits (struct xfs_dquot*) ;
 int xfs_qm_adjust_dqtimers (struct xfs_mount*,struct xfs_disk_dquot*) ;
 int xfs_qm_dqget (struct xfs_mount*,int *,scalar_t__,int ,int ,struct xfs_dquot**) ;
 int xfs_qm_dqprint (struct xfs_dquot*) ;
 int xfs_qm_dqrele (struct xfs_dquot*) ;
 struct xfs_trans* xfs_trans_alloc (struct xfs_mount*,int ) ;
 int xfs_trans_cancel (struct xfs_trans*,int ) ;
 int xfs_trans_commit (struct xfs_trans*,int ) ;
 int xfs_trans_dqjoin (struct xfs_trans*,struct xfs_dquot*) ;
 int xfs_trans_log_dquot (struct xfs_trans*,struct xfs_dquot*) ;
 int xfs_trans_reserve (struct xfs_trans*,int ,int,int ,int ,int ) ;

int
xfs_qm_scall_setqlim(
 struct xfs_mount *mp,
 xfs_dqid_t id,
 uint type,
 fs_disk_quota_t *newlim)
{
 struct xfs_quotainfo *q = mp->m_quotainfo;
 struct xfs_disk_dquot *ddq;
 struct xfs_dquot *dqp;
 struct xfs_trans *tp;
 int error;
 xfs_qcnt_t hard, soft;

 if (newlim->d_fieldmask & ~XFS_DQ_MASK)
  return EINVAL;
 if ((newlim->d_fieldmask & XFS_DQ_MASK) == 0)
  return 0;

 tp = xfs_trans_alloc(mp, XFS_TRANS_QM_SETQLIM);
 if ((error = xfs_trans_reserve(tp, 0, sizeof(xfs_disk_dquot_t) + 128,
          0, 0, XFS_DEFAULT_LOG_COUNT))) {
  xfs_trans_cancel(tp, 0);
  return (error);
 }







 mutex_lock(&q->qi_quotaofflock);





 if ((error = xfs_qm_dqget(mp, ((void*)0), id, type, XFS_QMOPT_DQALLOC, &dqp))) {
  xfs_trans_cancel(tp, XFS_TRANS_ABORT);
  ASSERT(error != ENOENT);
  goto out_unlock;
 }
 xfs_trans_dqjoin(tp, dqp);
 ddq = &dqp->q_core;




 hard = (newlim->d_fieldmask & FS_DQ_BHARD) ?
  (xfs_qcnt_t) XFS_BB_TO_FSB(mp, newlim->d_blk_hardlimit) :
   be64_to_cpu(ddq->d_blk_hardlimit);
 soft = (newlim->d_fieldmask & FS_DQ_BSOFT) ?
  (xfs_qcnt_t) XFS_BB_TO_FSB(mp, newlim->d_blk_softlimit) :
   be64_to_cpu(ddq->d_blk_softlimit);
 if (hard == 0 || hard >= soft) {
  ddq->d_blk_hardlimit = cpu_to_be64(hard);
  ddq->d_blk_softlimit = cpu_to_be64(soft);
  xfs_dquot_set_prealloc_limits(dqp);
  if (id == 0) {
   q->qi_bhardlimit = hard;
   q->qi_bsoftlimit = soft;
  }
 } else {
  xfs_debug(mp, "blkhard %Ld < blksoft %Ld\n", hard, soft);
 }
 hard = (newlim->d_fieldmask & FS_DQ_RTBHARD) ?
  (xfs_qcnt_t) XFS_BB_TO_FSB(mp, newlim->d_rtb_hardlimit) :
   be64_to_cpu(ddq->d_rtb_hardlimit);
 soft = (newlim->d_fieldmask & FS_DQ_RTBSOFT) ?
  (xfs_qcnt_t) XFS_BB_TO_FSB(mp, newlim->d_rtb_softlimit) :
   be64_to_cpu(ddq->d_rtb_softlimit);
 if (hard == 0 || hard >= soft) {
  ddq->d_rtb_hardlimit = cpu_to_be64(hard);
  ddq->d_rtb_softlimit = cpu_to_be64(soft);
  if (id == 0) {
   q->qi_rtbhardlimit = hard;
   q->qi_rtbsoftlimit = soft;
  }
 } else {
  xfs_debug(mp, "rtbhard %Ld < rtbsoft %Ld\n", hard, soft);
 }

 hard = (newlim->d_fieldmask & FS_DQ_IHARD) ?
  (xfs_qcnt_t) newlim->d_ino_hardlimit :
   be64_to_cpu(ddq->d_ino_hardlimit);
 soft = (newlim->d_fieldmask & FS_DQ_ISOFT) ?
  (xfs_qcnt_t) newlim->d_ino_softlimit :
   be64_to_cpu(ddq->d_ino_softlimit);
 if (hard == 0 || hard >= soft) {
  ddq->d_ino_hardlimit = cpu_to_be64(hard);
  ddq->d_ino_softlimit = cpu_to_be64(soft);
  if (id == 0) {
   q->qi_ihardlimit = hard;
   q->qi_isoftlimit = soft;
  }
 } else {
  xfs_debug(mp, "ihard %Ld < isoft %Ld\n", hard, soft);
 }




 if (newlim->d_fieldmask & FS_DQ_BWARNS)
  ddq->d_bwarns = cpu_to_be16(newlim->d_bwarns);
 if (newlim->d_fieldmask & FS_DQ_IWARNS)
  ddq->d_iwarns = cpu_to_be16(newlim->d_iwarns);
 if (newlim->d_fieldmask & FS_DQ_RTBWARNS)
  ddq->d_rtbwarns = cpu_to_be16(newlim->d_rtbwarns);

 if (id == 0) {







  if (newlim->d_fieldmask & FS_DQ_BTIMER) {
   q->qi_btimelimit = newlim->d_btimer;
   ddq->d_btimer = cpu_to_be32(newlim->d_btimer);
  }
  if (newlim->d_fieldmask & FS_DQ_ITIMER) {
   q->qi_itimelimit = newlim->d_itimer;
   ddq->d_itimer = cpu_to_be32(newlim->d_itimer);
  }
  if (newlim->d_fieldmask & FS_DQ_RTBTIMER) {
   q->qi_rtbtimelimit = newlim->d_rtbtimer;
   ddq->d_rtbtimer = cpu_to_be32(newlim->d_rtbtimer);
  }
  if (newlim->d_fieldmask & FS_DQ_BWARNS)
   q->qi_bwarnlimit = newlim->d_bwarns;
  if (newlim->d_fieldmask & FS_DQ_IWARNS)
   q->qi_iwarnlimit = newlim->d_iwarns;
  if (newlim->d_fieldmask & FS_DQ_RTBWARNS)
   q->qi_rtbwarnlimit = newlim->d_rtbwarns;
 } else {







  xfs_qm_adjust_dqtimers(mp, ddq);
 }
 dqp->dq_flags |= XFS_DQ_DIRTY;
 xfs_trans_log_dquot(tp, dqp);

 error = xfs_trans_commit(tp, 0);
 xfs_qm_dqprint(dqp);
 xfs_qm_dqrele(dqp);

 out_unlock:
 mutex_unlock(&q->qi_quotaofflock);
 return error;
}
