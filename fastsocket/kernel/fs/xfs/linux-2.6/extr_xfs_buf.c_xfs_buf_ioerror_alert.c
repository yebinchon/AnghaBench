
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_buf {int b_error; TYPE_1__* b_target; } ;
typedef int __uint64_t ;
struct TYPE_2__ {int bt_mount; } ;


 scalar_t__ XFS_BUF_ADDR (struct xfs_buf*) ;
 int XFS_BUF_COUNT (struct xfs_buf*) ;
 int xfs_alert (int ,char*,int ,char const*,int ,int ) ;

void
xfs_buf_ioerror_alert(
 struct xfs_buf *bp,
 const char *func)
{
 xfs_alert(bp->b_target->bt_mount,
"metadata I/O error: block 0x%llx (\"%s\") error %d buf count %zd",
  (__uint64_t)XFS_BUF_ADDR(bp), func,
  bp->b_error, XFS_BUF_COUNT(bp));
}
