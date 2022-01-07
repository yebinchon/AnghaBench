
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b_hold; } ;
typedef TYPE_1__ xfs_buf_t ;


 int _RET_IP_ ;
 int atomic_inc (int *) ;
 int trace_xfs_buf_hold (TYPE_1__*,int ) ;

void
xfs_buf_hold(
 xfs_buf_t *bp)
{
 trace_xfs_buf_hold(bp, _RET_IP_);
 atomic_inc(&bp->b_hold);
}
