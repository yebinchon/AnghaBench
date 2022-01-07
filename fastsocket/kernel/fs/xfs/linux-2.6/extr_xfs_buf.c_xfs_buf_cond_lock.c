
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int b_sema; } ;
typedef TYPE_1__ xfs_buf_t ;


 int EBUSY ;
 int XB_SET_OWNER (TYPE_1__*) ;
 int _RET_IP_ ;
 scalar_t__ down_trylock (int *) ;
 int trace_xfs_buf_cond_lock (TYPE_1__*,int ) ;

int
xfs_buf_cond_lock(
 xfs_buf_t *bp)
{
 int locked;

 locked = down_trylock(&bp->b_sema) == 0;
 if (locked)
  XB_SET_OWNER(bp);

 trace_xfs_buf_cond_lock(bp, _RET_IP_);
 return locked ? 0 : -EBUSY;
}
