
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ m_quotainfo; } ;
typedef TYPE_1__ xfs_mount_t ;
typedef int uint ;


 int delay (int) ;
 int xfs_qm_dqpurge_int (TYPE_1__*,int ) ;

int
xfs_qm_dqpurge_all(
 xfs_mount_t *mp,
 uint flags)
{
 int ndquots;





 if (mp->m_quotainfo) {
  while ((ndquots = xfs_qm_dqpurge_int(mp, flags))) {
   delay(ndquots * 10);
  }
 }
 return 0;
}
