
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct inode {int i_ino; scalar_t__ i_nlink; int i_sb; } ;
struct dentry {int d_name; } ;


 int ENOSPC ;
 int hfsplus_create_cat (int ,struct inode*,int *,struct inode*) ;
 int hfsplus_delete_inode (struct inode*) ;
 int hfsplus_instantiate (struct dentry*,struct inode*,int ) ;
 struct inode* hfsplus_new_inode (int ,int) ;
 int iput (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;

__attribute__((used)) static int hfsplus_create(struct inode *dir, struct dentry *dentry, int mode,
     struct nameidata *nd)
{
 struct inode *inode;
 int res;

 inode = hfsplus_new_inode(dir->i_sb, mode);
 if (!inode)
  return -ENOSPC;

 res = hfsplus_create_cat(inode->i_ino, dir, &dentry->d_name, inode);
 if (res) {
  inode->i_nlink = 0;
  hfsplus_delete_inode(inode);
  iput(inode);
  return res;
 }
 hfsplus_instantiate(dentry, inode, inode->i_ino);
 mark_inode_dirty(inode);
 return 0;
}
