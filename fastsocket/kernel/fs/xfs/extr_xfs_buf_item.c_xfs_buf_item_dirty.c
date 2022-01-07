
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bli_flags; } ;
typedef TYPE_1__ xfs_buf_log_item_t ;
typedef int uint ;


 int XFS_BLI_DIRTY ;

uint
xfs_buf_item_dirty(
 xfs_buf_log_item_t *bip)
{
 return (bip->bli_flags & XFS_BLI_DIRTY);
}
