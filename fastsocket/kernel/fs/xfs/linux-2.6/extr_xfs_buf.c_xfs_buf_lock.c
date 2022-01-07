
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int b_flags; int b_sema; TYPE_1__* b_target; int b_io_remaining; int b_pin_count; } ;
typedef TYPE_2__ xfs_buf_t ;
struct TYPE_7__ {int bt_bdi; int bt_mount; } ;


 int XBF_STALE ;
 int XB_SET_OWNER (TYPE_2__*) ;
 int _RET_IP_ ;
 scalar_t__ atomic_read (int *) ;
 int blk_run_backing_dev (int ,int *) ;
 int down (int *) ;
 int trace_xfs_buf_lock (TYPE_2__*,int ) ;
 int trace_xfs_buf_lock_done (TYPE_2__*,int ) ;
 int xfs_log_force (int ,int ) ;

void
xfs_buf_lock(
 xfs_buf_t *bp)
{
 trace_xfs_buf_lock(bp, _RET_IP_);

 if (atomic_read(&bp->b_pin_count) && (bp->b_flags & XBF_STALE))
  xfs_log_force(bp->b_target->bt_mount, 0);
 if (atomic_read(&bp->b_io_remaining))
  blk_run_backing_dev(bp->b_target->bt_bdi, ((void*)0));
 down(&bp->b_sema);
 XB_SET_OWNER(bp);

 trace_xfs_buf_lock_done(bp, _RET_IP_);
}
