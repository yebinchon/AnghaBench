
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xfs_trans_t ;
typedef int xfs_rtblock_t ;
struct TYPE_8__ {int sb_rextents; } ;
struct TYPE_9__ {TYPE_4__* m_rbmip; TYPE_2__ m_sb; } ;
typedef TYPE_3__ xfs_mount_t ;
typedef int xfs_extlen_t ;
typedef int __uint64_t ;
struct TYPE_7__ {int di_flags; int di_atime; } ;
struct TYPE_10__ {TYPE_1__ i_d; } ;


 int ASSERT (int ) ;
 int XFS_DIFLAG_NEWRTBM ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOG_CORE ;
 int do_mod (int,int) ;
 int xfs_highbit64 (int) ;
 int xfs_isilocked (TYPE_4__*,int ) ;
 int xfs_trans_log_inode (int *,TYPE_4__*,int ) ;

int
xfs_rtpick_extent(
 xfs_mount_t *mp,
 xfs_trans_t *tp,
 xfs_extlen_t len,
 xfs_rtblock_t *pick)
{
 xfs_rtblock_t b;
 int log2;
 __uint64_t resid;
 __uint64_t seq;
 __uint64_t *seqp;

 ASSERT(xfs_isilocked(mp->m_rbmip, XFS_ILOCK_EXCL));

 seqp = (__uint64_t *)&mp->m_rbmip->i_d.di_atime;
 if (!(mp->m_rbmip->i_d.di_flags & XFS_DIFLAG_NEWRTBM)) {
  mp->m_rbmip->i_d.di_flags |= XFS_DIFLAG_NEWRTBM;
  *seqp = 0;
 }
 seq = *seqp;
 if ((log2 = xfs_highbit64(seq)) == -1)
  b = 0;
 else {
  resid = seq - (1ULL << log2);
  b = (mp->m_sb.sb_rextents * ((resid << 1) + 1ULL)) >>
      (log2 + 1);
  if (b >= mp->m_sb.sb_rextents)
   b = do_mod(b, mp->m_sb.sb_rextents);
  if (b + len > mp->m_sb.sb_rextents)
   b = mp->m_sb.sb_rextents - len;
 }
 *seqp = seq + 1;
 xfs_trans_log_inode(tp, mp->m_rbmip, XFS_ILOG_CORE);
 *pick = b;
 return 0;
}
