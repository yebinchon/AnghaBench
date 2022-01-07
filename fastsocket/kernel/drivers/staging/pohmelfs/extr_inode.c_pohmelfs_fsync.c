
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int nr_to_write; int sync_mode; } ;
struct inode {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int WB_SYNC_ALL ;
 int sync_inode (struct inode*,struct writeback_control*) ;

__attribute__((used)) static int pohmelfs_fsync(struct file *file, struct dentry *dentry, int datasync)
{
 struct inode *inode = file->f_mapping->host;
 struct writeback_control wbc = {
  .sync_mode = WB_SYNC_ALL,
  .nr_to_write = 0,
 };

 return sync_inode(inode, &wbc);
}
