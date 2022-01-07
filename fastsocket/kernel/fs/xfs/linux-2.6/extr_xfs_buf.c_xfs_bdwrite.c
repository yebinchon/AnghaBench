
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int b_flags; } ;


 int XBF_ASYNC ;
 int XBF_DELWRI ;
 int XBF_READ ;
 int _RET_IP_ ;
 int trace_xfs_buf_bdwrite (struct xfs_buf*,int ) ;
 int xfs_buf_delwri_queue (struct xfs_buf*,int) ;

void
xfs_bdwrite(
 void *mp,
 struct xfs_buf *bp)
{
 trace_xfs_buf_bdwrite(bp, _RET_IP_);

 bp->b_flags &= ~XBF_READ;
 bp->b_flags |= (XBF_DELWRI | XBF_ASYNC);

 xfs_buf_delwri_queue(bp, 1);
}
