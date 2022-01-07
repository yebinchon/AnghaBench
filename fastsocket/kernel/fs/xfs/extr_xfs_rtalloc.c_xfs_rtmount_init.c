
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int xfs_suminfo_t ;
struct TYPE_9__ {scalar_t__ sb_rblocks; int sb_rextslog; int sb_rbmblocks; int sb_blocksize; } ;
typedef TYPE_1__ xfs_sb_t ;
struct TYPE_10__ {int m_rsumlevels; int m_rsumsize; int * m_rtdev_targp; TYPE_1__ m_sb; int * m_rsumip; int m_rbmip; } ;
typedef TYPE_2__ xfs_mount_t ;
typedef scalar_t__ xfs_daddr_t ;
typedef int xfs_buf_t ;
typedef int uint ;


 int EFBIG ;
 int EIO ;
 int ENODEV ;
 scalar_t__ XFS_BB_TO_FSB (TYPE_2__*,scalar_t__) ;
 int XFS_ERROR (int ) ;
 int XFS_FSB_TO_B (TYPE_2__*,int) ;
 scalar_t__ XFS_FSB_TO_BB (TYPE_2__*,int) ;
 int roundup (int,int ) ;
 int * xfs_buf_read_uncached (TYPE_2__*,int *,scalar_t__,int ,int ) ;
 int xfs_buf_relse (int *) ;
 int xfs_warn (TYPE_2__*,char*,...) ;

int
xfs_rtmount_init(
 xfs_mount_t *mp)
{
 xfs_buf_t *bp;
 xfs_daddr_t d;
 xfs_sb_t *sbp;

 sbp = &mp->m_sb;
 if (sbp->sb_rblocks == 0)
  return 0;
 if (mp->m_rtdev_targp == ((void*)0)) {
  xfs_warn(mp,
 "Filesystem has a realtime volume, use rtdev=device option");
  return XFS_ERROR(ENODEV);
 }
 mp->m_rsumlevels = sbp->sb_rextslog + 1;
 mp->m_rsumsize =
  (uint)sizeof(xfs_suminfo_t) * mp->m_rsumlevels *
  sbp->sb_rbmblocks;
 mp->m_rsumsize = roundup(mp->m_rsumsize, sbp->sb_blocksize);
 mp->m_rbmip = mp->m_rsumip = ((void*)0);



 d = (xfs_daddr_t)XFS_FSB_TO_BB(mp, mp->m_sb.sb_rblocks);
 if (XFS_BB_TO_FSB(mp, d) != mp->m_sb.sb_rblocks) {
  xfs_warn(mp, "realtime mount -- %llu != %llu",
   (unsigned long long) XFS_BB_TO_FSB(mp, d),
   (unsigned long long) mp->m_sb.sb_rblocks);
  return XFS_ERROR(EFBIG);
 }
 bp = xfs_buf_read_uncached(mp, mp->m_rtdev_targp,
     d - XFS_FSB_TO_BB(mp, 1),
     XFS_FSB_TO_B(mp, 1), 0);
 if (!bp) {
  xfs_warn(mp, "realtime device size check failed");
  return EIO;
 }
 xfs_buf_relse(bp);
 return 0;
}
