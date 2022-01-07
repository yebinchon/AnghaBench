
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; } ;
struct dentry {struct inode* d_inode; } ;


 int ENOTEMPTY ;
 scalar_t__ exofs_empty_dir (struct inode*) ;
 int exofs_unlink (struct inode*,struct dentry*) ;
 int inode_dec_link_count (struct inode*) ;

__attribute__((used)) static int exofs_rmdir(struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = dentry->d_inode;
 int err = -ENOTEMPTY;

 if (exofs_empty_dir(inode)) {
  err = exofs_unlink(dir, dentry);
  if (!err) {
   inode->i_size = 0;
   inode_dec_link_count(inode);
   inode_dec_link_count(dir);
  }
 }
 return err;
}
