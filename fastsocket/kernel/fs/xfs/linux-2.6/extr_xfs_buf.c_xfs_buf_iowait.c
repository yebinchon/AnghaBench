
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int b_error; int b_iowait; TYPE_1__* b_target; int b_io_remaining; } ;
typedef TYPE_2__ xfs_buf_t ;
struct TYPE_6__ {int bt_bdi; } ;


 int _RET_IP_ ;
 scalar_t__ atomic_read (int *) ;
 int blk_run_backing_dev (int ,int *) ;
 int trace_xfs_buf_iowait (TYPE_2__*,int ) ;
 int trace_xfs_buf_iowait_done (TYPE_2__*,int ) ;
 int wait_for_completion (int *) ;

int
xfs_buf_iowait(
 xfs_buf_t *bp)
{
 trace_xfs_buf_iowait(bp, _RET_IP_);

 if (atomic_read(&bp->b_io_remaining))
  blk_run_backing_dev(bp->b_target->bt_bdi, ((void*)0));
 if (!bp->b_error)
  wait_for_completion(&bp->b_iowait);

 trace_xfs_buf_iowait_done(bp, _RET_IP_);
 return bp->b_error;
}
