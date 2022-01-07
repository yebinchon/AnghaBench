
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* m_quotainfo; scalar_t__ m_rsumip; scalar_t__ m_rbmip; scalar_t__ m_rootip; } ;
typedef TYPE_2__ xfs_mount_t ;
struct TYPE_4__ {int * qi_gquotaip; int * qi_uquotaip; } ;


 int ASSERT (scalar_t__) ;
 int IRELE (int *) ;
 int xfs_qm_dqdetach (scalar_t__) ;

void
xfs_qm_unmount_quotas(
 xfs_mount_t *mp)
{




 ASSERT(mp->m_rootip);
 xfs_qm_dqdetach(mp->m_rootip);
 if (mp->m_rbmip)
  xfs_qm_dqdetach(mp->m_rbmip);
 if (mp->m_rsumip)
  xfs_qm_dqdetach(mp->m_rsumip);




 if (mp->m_quotainfo) {
  if (mp->m_quotainfo->qi_uquotaip) {
   IRELE(mp->m_quotainfo->qi_uquotaip);
   mp->m_quotainfo->qi_uquotaip = ((void*)0);
  }
  if (mp->m_quotainfo->qi_gquotaip) {
   IRELE(mp->m_quotainfo->qi_gquotaip);
   mp->m_quotainfo->qi_gquotaip = ((void*)0);
  }
 }
}
