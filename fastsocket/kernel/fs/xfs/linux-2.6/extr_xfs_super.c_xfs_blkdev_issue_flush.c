
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bt_bdev; } ;
typedef TYPE_1__ xfs_buftarg_t ;


 int GFP_NOFS ;
 int __blkdev_issue_flush (int ,int ,int *) ;

void
xfs_blkdev_issue_flush(
 xfs_buftarg_t *buftarg)
{
 __blkdev_issue_flush(buftarg->bt_bdev, GFP_NOFS, ((void*)0));
}
