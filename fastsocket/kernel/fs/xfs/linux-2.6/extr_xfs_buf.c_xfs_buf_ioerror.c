
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned short b_error; } ;
typedef TYPE_1__ xfs_buf_t ;


 int ASSERT (int) ;
 int _RET_IP_ ;
 int trace_xfs_buf_ioerror (TYPE_1__*,int,int ) ;

void
xfs_buf_ioerror(
 xfs_buf_t *bp,
 int error)
{
 ASSERT(error >= 0 && error <= 0xffff);
 bp->b_error = (unsigned short)error;
 trace_xfs_buf_ioerror(bp, error, _RET_IP_);
}
