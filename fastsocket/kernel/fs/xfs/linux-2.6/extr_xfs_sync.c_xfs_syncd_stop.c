
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_sync_task; } ;


 int kthread_stop (int ) ;

void
xfs_syncd_stop(
 struct xfs_mount *mp)
{
 kthread_stop(mp->m_sync_task);
}
