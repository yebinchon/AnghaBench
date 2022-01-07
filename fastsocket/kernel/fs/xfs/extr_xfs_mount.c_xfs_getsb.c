
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * m_sb_bp; } ;
typedef TYPE_1__ xfs_mount_t ;
typedef int xfs_buf_t ;


 int ASSERT (int ) ;
 int PRIBIO ;
 int XBF_TRYLOCK ;
 int XFS_BUF_CPSEMA (int *) ;
 int XFS_BUF_HOLD (int *) ;
 int XFS_BUF_ISDONE (int *) ;
 int XFS_BUF_PSEMA (int *,int ) ;

xfs_buf_t *
xfs_getsb(
 xfs_mount_t *mp,
 int flags)
{
 xfs_buf_t *bp;

 ASSERT(mp->m_sb_bp != ((void*)0));
 bp = mp->m_sb_bp;
 if (flags & XBF_TRYLOCK) {
  if (!XFS_BUF_CPSEMA(bp)) {
   return ((void*)0);
  }
 } else {
  XFS_BUF_PSEMA(bp, PRIBIO);
 }
 XFS_BUF_HOLD(bp);
 ASSERT(XFS_BUF_ISDONE(bp));
 return bp;
}
