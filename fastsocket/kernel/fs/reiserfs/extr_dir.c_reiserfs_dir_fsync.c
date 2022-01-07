
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct file {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 int reiserfs_commit_for_inode (struct inode*) ;
 int reiserfs_write_lock (int ) ;
 int reiserfs_write_unlock (int ) ;

__attribute__((used)) static int reiserfs_dir_fsync(struct file *filp, struct dentry *dentry,
         int datasync)
{
 struct inode *inode = dentry->d_inode;
 int err;
 reiserfs_write_lock(inode->i_sb);
 err = reiserfs_commit_for_inode(inode);
 reiserfs_write_unlock(inode->i_sb);
 if (err < 0)
  return err;
 return 0;
}
