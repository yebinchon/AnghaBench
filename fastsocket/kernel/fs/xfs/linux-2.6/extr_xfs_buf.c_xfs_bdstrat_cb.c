
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_buf {int b_iodone; TYPE_1__* b_target; } ;
struct TYPE_2__ {int bt_mount; } ;


 int XFS_BUF_ISREAD (struct xfs_buf*) ;
 scalar_t__ XFS_FORCED_SHUTDOWN (int ) ;
 int _RET_IP_ ;
 int trace_xfs_bdstrat_shut (struct xfs_buf*,int ) ;
 int xfs_bioerror (struct xfs_buf*) ;
 int xfs_bioerror_relse (struct xfs_buf*) ;
 int xfs_buf_iorequest (struct xfs_buf*) ;

int
xfs_bdstrat_cb(
 struct xfs_buf *bp)
{
 if (XFS_FORCED_SHUTDOWN(bp->b_target->bt_mount)) {
  trace_xfs_bdstrat_shut(bp, _RET_IP_);





  if (!bp->b_iodone && !XFS_BUF_ISREAD(bp))
   return xfs_bioerror_relse(bp);
  else
   return xfs_bioerror(bp);
 }

 xfs_buf_iorequest(bp);
 return 0;
}
