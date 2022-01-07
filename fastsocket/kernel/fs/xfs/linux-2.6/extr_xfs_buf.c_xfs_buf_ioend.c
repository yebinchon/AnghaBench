
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b_flags; scalar_t__ b_error; int b_iowait; int b_iodone_work; scalar_t__ b_iodone; } ;
typedef TYPE_1__ xfs_buf_t ;


 int INIT_WORK (int *,int (*) (int *)) ;
 int XBF_ASYNC ;
 int XBF_DONE ;
 int XBF_READ ;
 int XBF_READ_AHEAD ;
 int XBF_WRITE ;
 int _RET_IP_ ;
 int complete (int *) ;
 int queue_work (int ,int *) ;
 int trace_xfs_buf_iodone (TYPE_1__*,int ) ;
 int xfs_buf_iodone_work (int *) ;
 int xfslogd_workqueue ;

void
xfs_buf_ioend(
 xfs_buf_t *bp,
 int schedule)
{
 trace_xfs_buf_iodone(bp, _RET_IP_);

 bp->b_flags &= ~(XBF_READ | XBF_WRITE | XBF_READ_AHEAD);
 if (bp->b_error == 0)
  bp->b_flags |= XBF_DONE;

 if ((bp->b_iodone) || (bp->b_flags & XBF_ASYNC)) {
  if (schedule) {
   INIT_WORK(&bp->b_iodone_work, xfs_buf_iodone_work);
   queue_work(xfslogd_workqueue, &bp->b_iodone_work);
  } else {
   xfs_buf_iodone_work(&bp->b_iodone_work);
  }
 } else {
  complete(&bp->b_iowait);
 }
}
