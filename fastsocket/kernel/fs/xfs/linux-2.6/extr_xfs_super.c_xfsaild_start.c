
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_ail {int xa_task; TYPE_1__* xa_mount; scalar_t__ xa_target; } ;
struct TYPE_2__ {int m_fsname; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int kthread_run (int ,struct xfs_ail*,char*,int ) ;
 int xfsaild ;

int
xfsaild_start(
 struct xfs_ail *ailp)
{
 ailp->xa_target = 0;
 ailp->xa_task = kthread_run(xfsaild, ailp, "xfsaild/%s",
        ailp->xa_mount->m_fsname);
 if (IS_ERR(ailp->xa_task))
  return -PTR_ERR(ailp->xa_task);
 return 0;
}
