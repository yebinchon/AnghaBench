
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int b_flags; int b_sema; int b_hold; } ;
typedef TYPE_1__ xfs_buf_t ;


 int XBF_ASYNC ;
 int XBF_DELWRI ;
 int XB_CLEAR_OWNER (TYPE_1__*) ;
 int _RET_IP_ ;
 int _XBF_DELWRI_Q ;
 int atomic_inc (int *) ;
 int trace_xfs_buf_unlock (TYPE_1__*,int ) ;
 int up (int *) ;
 int xfs_buf_delwri_queue (TYPE_1__*,int ) ;

void
xfs_buf_unlock(
 xfs_buf_t *bp)
{
 if ((bp->b_flags & (XBF_DELWRI|_XBF_DELWRI_Q)) == XBF_DELWRI) {
  atomic_inc(&bp->b_hold);
  bp->b_flags |= XBF_ASYNC;
  xfs_buf_delwri_queue(bp, 0);
 }

 XB_CLEAR_OWNER(bp);
 up(&bp->b_sema);

 trace_xfs_buf_unlock(bp, _RET_IP_);
}
