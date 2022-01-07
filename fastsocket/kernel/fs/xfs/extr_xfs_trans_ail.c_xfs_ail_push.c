
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_lsn_t ;
typedef int xfs_log_item_t ;
struct xfs_ail {int xa_target; int xa_mount; } ;


 int XFS_FORCED_SHUTDOWN (int ) ;
 scalar_t__ XFS_LSN_CMP (int ,int ) ;
 int * xfs_ail_min (struct xfs_ail*) ;
 int xfsaild_wakeup (struct xfs_ail*,int ) ;

void
xfs_ail_push(
 struct xfs_ail *ailp,
 xfs_lsn_t threshold_lsn)
{
 xfs_log_item_t *lip;

 lip = xfs_ail_min(ailp);
 if (lip && !XFS_FORCED_SHUTDOWN(ailp->xa_mount)) {
  if (XFS_LSN_CMP(threshold_lsn, ailp->xa_target) > 0)
   xfsaild_wakeup(ailp, threshold_lsn);
 }
}
