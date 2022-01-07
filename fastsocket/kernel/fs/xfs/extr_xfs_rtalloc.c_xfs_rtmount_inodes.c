
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sb_rbmino; scalar_t__ sb_rsumino; } ;
typedef TYPE_1__ xfs_sb_t ;
struct TYPE_6__ {int * m_rsumip; int * m_rbmip; TYPE_1__ m_sb; } ;
typedef TYPE_2__ xfs_mount_t ;


 int ASSERT (int) ;
 int IRELE (int *) ;
 scalar_t__ NULLFSINO ;
 int xfs_iget (TYPE_2__*,int *,scalar_t__,int ,int ,int **) ;

int
xfs_rtmount_inodes(
 xfs_mount_t *mp)
{
 int error;
 xfs_sb_t *sbp;

 sbp = &mp->m_sb;
 if (sbp->sb_rbmino == NULLFSINO)
  return 0;
 error = xfs_iget(mp, ((void*)0), sbp->sb_rbmino, 0, 0, &mp->m_rbmip);
 if (error)
  return error;
 ASSERT(mp->m_rbmip != ((void*)0));
 ASSERT(sbp->sb_rsumino != NULLFSINO);
 error = xfs_iget(mp, ((void*)0), sbp->sb_rsumino, 0, 0, &mp->m_rsumip);
 if (error) {
  IRELE(mp->m_rbmip);
  return error;
 }
 ASSERT(mp->m_rsumip != ((void*)0));
 return 0;
}
