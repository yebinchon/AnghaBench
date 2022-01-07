
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {scalar_t__ m_rsumip; scalar_t__ m_rbmip; } ;


 int IRELE (scalar_t__) ;

void
xfs_rtunmount_inodes(
 struct xfs_mount *mp)
{
 if (mp->m_rbmip)
  IRELE(mp->m_rbmip);
 if (mp->m_rsumip)
  IRELE(mp->m_rsumip);
}
