
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int dummy; } ;
struct xfs_buf {int dummy; } ;


 scalar_t__ XFS_FORCED_SHUTDOWN (struct xfs_mount*) ;
 int _RET_IP_ ;
 int trace_xfs_bdstrat_shut (struct xfs_buf*,int ) ;
 int xfs_bioerror_relse (struct xfs_buf*) ;
 int xfs_buf_iorequest (struct xfs_buf*) ;

void
xfsbdstrat(
 struct xfs_mount *mp,
 struct xfs_buf *bp)
{
 if (XFS_FORCED_SHUTDOWN(mp)) {
  trace_xfs_bdstrat_shut(bp, _RET_IP_);
  xfs_bioerror_relse(bp);
  return;
 }

 xfs_buf_iorequest(bp);
}
