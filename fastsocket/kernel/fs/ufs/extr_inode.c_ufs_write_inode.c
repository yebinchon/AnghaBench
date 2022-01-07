
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ sync_mode; } ;
struct inode {int dummy; } ;


 scalar_t__ WB_SYNC_ALL ;
 int lock_kernel () ;
 int ufs_update_inode (struct inode*,int) ;
 int unlock_kernel () ;

int ufs_write_inode(struct inode *inode, struct writeback_control *wbc)
{
 int ret;
 lock_kernel();
 ret = ufs_update_inode(inode, wbc->sync_mode == WB_SYNC_ALL);
 unlock_kernel();
 return ret;
}
