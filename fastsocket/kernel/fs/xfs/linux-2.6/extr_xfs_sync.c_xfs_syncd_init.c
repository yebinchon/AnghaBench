
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * w_completion; struct xfs_mount* w_mount; int w_syncer; } ;
struct xfs_mount {int m_sync_task; int m_fsname; TYPE_1__ m_sync_work; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int kthread_run (int ,struct xfs_mount*,char*,int ) ;
 int xfs_sync_worker ;
 int xfssyncd ;

int
xfs_syncd_init(
 struct xfs_mount *mp)
{
 mp->m_sync_work.w_syncer = xfs_sync_worker;
 mp->m_sync_work.w_mount = mp;
 mp->m_sync_work.w_completion = ((void*)0);
 mp->m_sync_task = kthread_run(xfssyncd, mp, "xfssyncd/%s", mp->m_fsname);
 if (IS_ERR(mp->m_sync_task))
  return -PTR_ERR(mp->m_sync_task);
 return 0;
}
