
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_transaction_info {int dummy; } ;
struct inode {scalar_t__ i_nlink; int i_sb; int i_count; int i_ctime; } ;
struct dentry {struct inode* d_inode; } ;


 int CURRENT_TIME ;
 int EMLINK ;
 scalar_t__ NILFS_LINK_MAX ;
 int atomic_inc (int *) ;
 int inode_inc_link_count (struct inode*) ;
 int nilfs_add_nondir (struct dentry*,struct inode*) ;
 int nilfs_transaction_abort (int ) ;
 int nilfs_transaction_begin (int ,struct nilfs_transaction_info*,int) ;
 int nilfs_transaction_commit (int ) ;

__attribute__((used)) static int nilfs_link(struct dentry *old_dentry, struct inode *dir,
        struct dentry *dentry)
{
 struct inode *inode = old_dentry->d_inode;
 struct nilfs_transaction_info ti;
 int err;

 if (inode->i_nlink >= NILFS_LINK_MAX)
  return -EMLINK;

 err = nilfs_transaction_begin(dir->i_sb, &ti, 1);
 if (err)
  return err;

 inode->i_ctime = CURRENT_TIME;
 inode_inc_link_count(inode);
 atomic_inc(&inode->i_count);

 err = nilfs_add_nondir(dentry, inode);
 if (!err)
  err = nilfs_transaction_commit(dir->i_sb);
 else
  nilfs_transaction_abort(dir->i_sb);

 return err;
}
