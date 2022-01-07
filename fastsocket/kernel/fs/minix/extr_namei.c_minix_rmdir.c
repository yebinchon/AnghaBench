
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 int ENOTEMPTY ;
 int inode_dec_link_count (struct inode*) ;
 scalar_t__ minix_empty_dir (struct inode*) ;
 int minix_unlink (struct inode*,struct dentry*) ;

__attribute__((used)) static int minix_rmdir(struct inode * dir, struct dentry *dentry)
{
 struct inode * inode = dentry->d_inode;
 int err = -ENOTEMPTY;

 if (minix_empty_dir(inode)) {
  err = minix_unlink(dir, dentry);
  if (!err) {
   inode_dec_link_count(dir);
   inode_dec_link_count(inode);
  }
 }
 return err;
}
