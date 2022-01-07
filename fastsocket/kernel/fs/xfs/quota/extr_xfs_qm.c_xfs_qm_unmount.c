
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {scalar_t__ m_quotainfo; } ;


 int XFS_QMOPT_QUOTALL ;
 int xfs_qm_destroy_quotainfo (struct xfs_mount*) ;
 int xfs_qm_dqpurge_all (struct xfs_mount*,int ) ;

void
xfs_qm_unmount(
 struct xfs_mount *mp)
{
 if (mp->m_quotainfo) {
  xfs_qm_dqpurge_all(mp, XFS_QMOPT_QUOTALL);
  xfs_qm_destroy_quotainfo(mp);
 }
}
