
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
struct TYPE_5__ {TYPE_1__ b_sema; } ;
typedef TYPE_2__ xfs_buf_t ;



int
xfs_buf_lock_value(
 xfs_buf_t *bp)
{
 return bp->b_sema.count;
}
