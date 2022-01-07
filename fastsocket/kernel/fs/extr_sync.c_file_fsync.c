
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_bdev; TYPE_1__* s_op; scalar_t__ s_dirt; } ;
struct inode {struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int (* write_super ) (struct super_block*) ;} ;


 int stub1 (struct super_block*) ;
 int sync_blockdev (int ) ;
 int write_inode_now (struct inode*,int ) ;

int file_fsync(struct file *filp, struct dentry *dentry, int datasync)
{
 struct inode * inode = dentry->d_inode;
 struct super_block * sb;
 int ret, err;


 ret = write_inode_now(inode, 0);


 sb = inode->i_sb;
 if (sb->s_dirt && sb->s_op->write_super)
  sb->s_op->write_super(sb);


 err = sync_blockdev(sb->s_bdev);
 if (!ret)
  ret = err;
 return ret;
}
