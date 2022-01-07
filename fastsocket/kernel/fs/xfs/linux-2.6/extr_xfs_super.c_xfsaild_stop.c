
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_ail {int xa_task; } ;


 int kthread_stop (int ) ;

void
xfsaild_stop(
 struct xfs_ail *ailp)
{
 kthread_stop(ailp->xa_task);
}
