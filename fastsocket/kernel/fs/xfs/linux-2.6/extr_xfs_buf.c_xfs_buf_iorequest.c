
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int b_flags; int b_io_remaining; } ;
typedef TYPE_1__ xfs_buf_t ;


 int XBF_DELWRI ;
 int XBF_WRITE ;
 int _RET_IP_ ;
 int _xfs_buf_ioapply (TYPE_1__*) ;
 int _xfs_buf_ioend (TYPE_1__*,int) ;
 int atomic_set (int *,int) ;
 int trace_xfs_buf_iorequest (TYPE_1__*,int ) ;
 int xfs_buf_delwri_queue (TYPE_1__*,int) ;
 int xfs_buf_hold (TYPE_1__*) ;
 int xfs_buf_rele (TYPE_1__*) ;
 int xfs_buf_wait_unpin (TYPE_1__*) ;

void
xfs_buf_iorequest(
 xfs_buf_t *bp)
{
 trace_xfs_buf_iorequest(bp, _RET_IP_);

 if (bp->b_flags & XBF_DELWRI) {
  xfs_buf_delwri_queue(bp, 1);
  return;
 }

 if (bp->b_flags & XBF_WRITE) {
  xfs_buf_wait_unpin(bp);
 }

 xfs_buf_hold(bp);





 atomic_set(&bp->b_io_remaining, 1);
 _xfs_buf_ioapply(bp);
 _xfs_buf_ioend(bp, 1);

 xfs_buf_rele(bp);
}
