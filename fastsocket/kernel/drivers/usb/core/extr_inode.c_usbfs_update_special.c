
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ctime; int i_mtime; int i_atime; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int CURRENT_TIME ;
 TYPE_1__* devices_usbfs_dentry ;

void usbfs_update_special (void)
{
 struct inode *inode;

 if (devices_usbfs_dentry) {
  inode = devices_usbfs_dentry->d_inode;
  if (inode)
   inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME;
 }
}
