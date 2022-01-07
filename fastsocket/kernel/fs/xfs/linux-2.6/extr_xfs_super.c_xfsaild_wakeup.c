
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_lsn_t ;
struct xfs_ail {int xa_task; int xa_target; } ;


 scalar_t__ XFS_LSN_CMP (int ,int ) ;
 int wake_up_process (int ) ;
 int xfs_trans_ail_copy_lsn (struct xfs_ail*,int *,int *) ;

void
xfsaild_wakeup(
 struct xfs_ail *ailp,
 xfs_lsn_t threshold_lsn)
{

 if (XFS_LSN_CMP(threshold_lsn, ailp->xa_target) > 0) {
  xfs_trans_ail_copy_lsn(ailp, &ailp->xa_target, &threshold_lsn);
  wake_up_process(ailp->xa_task);
 }
}
