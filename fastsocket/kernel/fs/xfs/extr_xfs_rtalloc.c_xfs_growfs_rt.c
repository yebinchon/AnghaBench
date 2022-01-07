
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int xfs_trans_t ;
typedef int xfs_suminfo_t ;
struct TYPE_25__ {scalar_t__ sb_rblocks; int sb_rextsize; int sb_blocksize; int sb_logblocks; int sb_rbmblocks; int sb_rextents; int sb_rextslog; } ;
typedef TYPE_2__ xfs_sb_t ;
typedef int xfs_rtblock_t ;
struct TYPE_26__ {int m_blkbit_log; int m_rsumlevels; int m_rsumsize; TYPE_5__* m_rsumip; TYPE_5__* m_rbmip; TYPE_2__ m_sb; int * m_rtdev_targp; } ;
typedef TYPE_3__ xfs_mount_t ;
struct TYPE_27__ {scalar_t__ newblocks; int extsize; } ;
typedef TYPE_4__ xfs_growfs_rt_t ;
typedef int xfs_fsblock_t ;
typedef int xfs_extlen_t ;
typedef scalar_t__ xfs_drtbno_t ;
typedef scalar_t__ xfs_drfsbno_t ;
typedef int xfs_buf_t ;
typedef int uint8_t ;
typedef int uint ;
struct TYPE_24__ {int di_size; } ;
struct TYPE_28__ {TYPE_1__ i_d; } ;


 int ASSERT (int) ;
 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EIO ;
 int EPERM ;
 int KM_SLEEP ;
 int NBBY ;
 int XFS_B_TO_FSB (TYPE_3__*,int) ;
 int XFS_ERROR (int ) ;
 int XFS_FSB_TO_B (TYPE_3__*,int) ;
 int XFS_FSB_TO_BB (TYPE_3__*,scalar_t__) ;
 int XFS_GROWRTFREE_LOG_RES (TYPE_3__*) ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOG_CORE ;
 scalar_t__ XFS_RTMIN (scalar_t__,int) ;
 int XFS_TRANS_ABORT ;
 int XFS_TRANS_GROWFSRT_FREE ;
 int XFS_TRANS_SB_FREXTENTS ;
 int XFS_TRANS_SB_RBLOCKS ;
 int XFS_TRANS_SB_RBMBLOCKS ;
 int XFS_TRANS_SB_REXTENTS ;
 int XFS_TRANS_SB_REXTSIZE ;
 int XFS_TRANS_SB_REXTSLOG ;
 int capable (int ) ;
 int do_div (scalar_t__,int) ;
 int howmany_64 (scalar_t__,int) ;
 TYPE_3__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_3__*) ;
 int * xfs_buf_read_uncached (TYPE_3__*,int *,int ,int,int ) ;
 int xfs_buf_relse (int *) ;
 int xfs_growfs_rt_alloc (TYPE_3__*,int,int,TYPE_5__*) ;
 void* xfs_highbit32 (scalar_t__) ;
 int xfs_ilock (TYPE_5__*,int ) ;
 int xfs_rtcopy_summary (TYPE_3__*,TYPE_3__*,int *) ;
 int xfs_rtfree_range (TYPE_3__*,int *,scalar_t__,scalar_t__,int **,int *) ;
 int xfs_sb_validate_fsb_count (TYPE_2__*,scalar_t__) ;
 int * xfs_trans_alloc (TYPE_3__*,int ) ;
 int xfs_trans_cancel (int *,int) ;
 int xfs_trans_commit (int *,int ) ;
 int xfs_trans_ijoin_ref (int *,TYPE_5__*,int ) ;
 int xfs_trans_log_inode (int *,TYPE_5__*,int ) ;
 int xfs_trans_mod_sb (int *,int ,scalar_t__) ;
 int xfs_trans_reserve (int *,int ,int ,int ,int ,int ) ;

int
xfs_growfs_rt(
 xfs_mount_t *mp,
 xfs_growfs_rt_t *in)
{
 xfs_rtblock_t bmbno;
 xfs_buf_t *bp;
 int error;
 xfs_mount_t *nmp;
 xfs_drfsbno_t nrblocks;
 xfs_extlen_t nrbmblocks;
 xfs_drtbno_t nrextents;
 uint8_t nrextslog;
 xfs_extlen_t nrsumblocks;
 uint nrsumlevels;
 uint nrsumsize;
 xfs_sb_t *nsbp;
 xfs_extlen_t rbmblocks;
 xfs_extlen_t rsumblocks;
 xfs_sb_t *sbp;
 xfs_fsblock_t sumbno;

 sbp = &mp->m_sb;



 if (!capable(CAP_SYS_ADMIN))
  return XFS_ERROR(EPERM);
 if (mp->m_rtdev_targp == ((void*)0) || mp->m_rbmip == ((void*)0) ||
     (nrblocks = in->newblocks) <= sbp->sb_rblocks ||
     (sbp->sb_rblocks && (in->extsize != sbp->sb_rextsize)))
  return XFS_ERROR(EINVAL);
 if ((error = xfs_sb_validate_fsb_count(sbp, nrblocks)))
  return error;



 bp = xfs_buf_read_uncached(mp, mp->m_rtdev_targp,
    XFS_FSB_TO_BB(mp, nrblocks - 1),
    XFS_FSB_TO_B(mp, 1), 0);
 if (!bp)
  return EIO;
 xfs_buf_relse(bp);




 nrextents = nrblocks;
 do_div(nrextents, in->extsize);
 nrbmblocks = howmany_64(nrextents, NBBY * sbp->sb_blocksize);
 nrextslog = xfs_highbit32(nrextents);
 nrsumlevels = nrextslog + 1;
 nrsumsize = (uint)sizeof(xfs_suminfo_t) * nrsumlevels * nrbmblocks;
 nrsumblocks = XFS_B_TO_FSB(mp, nrsumsize);
 nrsumsize = XFS_FSB_TO_B(mp, nrsumblocks);





 if (nrsumblocks > (mp->m_sb.sb_logblocks >> 1))
  return XFS_ERROR(EINVAL);




 rbmblocks = XFS_B_TO_FSB(mp, mp->m_rbmip->i_d.di_size);
 rsumblocks = XFS_B_TO_FSB(mp, mp->m_rsumip->i_d.di_size);



 error = xfs_growfs_rt_alloc(mp, rbmblocks, nrbmblocks, mp->m_rbmip);
 if (error)
  return error;
 error = xfs_growfs_rt_alloc(mp, rsumblocks, nrsumblocks, mp->m_rsumip);
 if (error)
  return error;



 nmp = kmem_alloc(sizeof(*nmp), KM_SLEEP);






 for (bmbno = sbp->sb_rbmblocks -
       ((sbp->sb_rextents & ((1 << mp->m_blkbit_log) - 1)) != 0);
      bmbno < nrbmblocks;
      bmbno++) {
  xfs_trans_t *tp;
  int cancelflags = 0;

  *nmp = *mp;
  nsbp = &nmp->m_sb;



  nsbp->sb_rextsize = in->extsize;
  nsbp->sb_rbmblocks = bmbno + 1;
  nsbp->sb_rblocks =
   XFS_RTMIN(nrblocks,
      nsbp->sb_rbmblocks * NBBY *
      nsbp->sb_blocksize * nsbp->sb_rextsize);
  nsbp->sb_rextents = nsbp->sb_rblocks;
  do_div(nsbp->sb_rextents, nsbp->sb_rextsize);
  ASSERT(nsbp->sb_rextents != 0);
  nsbp->sb_rextslog = xfs_highbit32(nsbp->sb_rextents);
  nrsumlevels = nmp->m_rsumlevels = nsbp->sb_rextslog + 1;
  nrsumsize =
   (uint)sizeof(xfs_suminfo_t) * nrsumlevels *
   nsbp->sb_rbmblocks;
  nrsumblocks = XFS_B_TO_FSB(mp, nrsumsize);
  nmp->m_rsumsize = nrsumsize = XFS_FSB_TO_B(mp, nrsumblocks);



  tp = xfs_trans_alloc(mp, XFS_TRANS_GROWFSRT_FREE);
  if ((error = xfs_trans_reserve(tp, 0,
    XFS_GROWRTFREE_LOG_RES(nmp), 0, 0, 0)))
   goto error_cancel;



  xfs_ilock(mp->m_rbmip, XFS_ILOCK_EXCL);
  xfs_trans_ijoin_ref(tp, mp->m_rbmip, XFS_ILOCK_EXCL);



  mp->m_rbmip->i_d.di_size =
   nsbp->sb_rbmblocks * nsbp->sb_blocksize;
  xfs_trans_log_inode(tp, mp->m_rbmip, XFS_ILOG_CORE);
  cancelflags |= XFS_TRANS_ABORT;



  xfs_ilock(mp->m_rsumip, XFS_ILOCK_EXCL);
  xfs_trans_ijoin_ref(tp, mp->m_rsumip, XFS_ILOCK_EXCL);



  mp->m_rsumip->i_d.di_size = nmp->m_rsumsize;
  xfs_trans_log_inode(tp, mp->m_rsumip, XFS_ILOG_CORE);




  if (sbp->sb_rbmblocks != nsbp->sb_rbmblocks ||
      mp->m_rsumlevels != nmp->m_rsumlevels) {
   error = xfs_rtcopy_summary(mp, nmp, tp);
   if (error)
    goto error_cancel;
  }



  if (nsbp->sb_rextsize != sbp->sb_rextsize)
   xfs_trans_mod_sb(tp, XFS_TRANS_SB_REXTSIZE,
    nsbp->sb_rextsize - sbp->sb_rextsize);
  if (nsbp->sb_rbmblocks != sbp->sb_rbmblocks)
   xfs_trans_mod_sb(tp, XFS_TRANS_SB_RBMBLOCKS,
    nsbp->sb_rbmblocks - sbp->sb_rbmblocks);
  if (nsbp->sb_rblocks != sbp->sb_rblocks)
   xfs_trans_mod_sb(tp, XFS_TRANS_SB_RBLOCKS,
    nsbp->sb_rblocks - sbp->sb_rblocks);
  if (nsbp->sb_rextents != sbp->sb_rextents)
   xfs_trans_mod_sb(tp, XFS_TRANS_SB_REXTENTS,
    nsbp->sb_rextents - sbp->sb_rextents);
  if (nsbp->sb_rextslog != sbp->sb_rextslog)
   xfs_trans_mod_sb(tp, XFS_TRANS_SB_REXTSLOG,
    nsbp->sb_rextslog - sbp->sb_rextslog);



  bp = ((void*)0);
  error = xfs_rtfree_range(nmp, tp, sbp->sb_rextents,
   nsbp->sb_rextents - sbp->sb_rextents, &bp, &sumbno);
  if (error) {
error_cancel:
   xfs_trans_cancel(tp, cancelflags);
   break;
  }



  xfs_trans_mod_sb(tp, XFS_TRANS_SB_FREXTENTS,
   nsbp->sb_rextents - sbp->sb_rextents);



  mp->m_rsumlevels = nrsumlevels;
  mp->m_rsumsize = nrsumsize;

  error = xfs_trans_commit(tp, 0);
  if (error)
   break;
 }




 kmem_free(nmp);

 return error;
}
