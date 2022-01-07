
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct file {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 int LLONG_MAX ;
 int nilfs_construct_dsync_segment (int ,struct inode*,int ,int ) ;
 int nilfs_construct_segment (int ) ;
 int nilfs_inode_dirty (struct inode*) ;

int nilfs_sync_file(struct file *file, struct dentry *dentry, int datasync)
{
 struct inode *inode = dentry->d_inode;
 int err;

 if (!nilfs_inode_dirty(inode))
  return 0;

 if (datasync)
  err = nilfs_construct_dsync_segment(inode->i_sb, inode, 0,
          LLONG_MAX);
 else
  err = nilfs_construct_segment(inode->i_sb);

 return err;
}
