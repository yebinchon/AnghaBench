
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct file {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int s_bdev; } ;


 int sync_blockdev (int ) ;
 int write_inode_now (struct inode*,int ) ;

int affs_file_fsync(struct file *filp, struct dentry *dentry, int datasync)
{
 struct inode * inode = dentry->d_inode;
 int ret, err;

 ret = write_inode_now(inode, 0);
 err = sync_blockdev(inode->i_sb->s_bdev);
 if (!ret)
  ret = err;
 return ret;
}
