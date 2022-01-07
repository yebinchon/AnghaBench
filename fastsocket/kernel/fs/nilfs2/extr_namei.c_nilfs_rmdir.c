
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_transaction_info {int dummy; } ;
struct inode {int i_sb; scalar_t__ i_size; } ;
struct dentry {struct inode* d_inode; } ;


 int ENOTEMPTY ;
 int inode_dec_link_count (struct inode*) ;
 scalar_t__ nilfs_empty_dir (struct inode*) ;
 int nilfs_transaction_abort (int ) ;
 int nilfs_transaction_begin (int ,struct nilfs_transaction_info*,int ) ;
 int nilfs_transaction_commit (int ) ;
 int nilfs_unlink (struct inode*,struct dentry*) ;

__attribute__((used)) static int nilfs_rmdir(struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = dentry->d_inode;
 struct nilfs_transaction_info ti;
 int err;

 err = nilfs_transaction_begin(dir->i_sb, &ti, 0);
 if (err)
  return err;

 err = -ENOTEMPTY;
 if (nilfs_empty_dir(inode)) {
  err = nilfs_unlink(dir, dentry);
  if (!err) {
   inode->i_size = 0;
   inode_dec_link_count(inode);
   inode_dec_link_count(dir);
  }
 }
 if (!err)
  err = nilfs_transaction_commit(dir->i_sb);
 else
  nilfs_transaction_abort(dir->i_sb);

 return err;
}
