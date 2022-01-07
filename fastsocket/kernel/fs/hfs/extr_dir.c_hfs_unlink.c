
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ctime; int i_ino; } ;
struct dentry {int d_name; struct inode* d_inode; } ;


 int CURRENT_TIME_SEC ;
 int drop_nlink (struct inode*) ;
 int hfs_cat_delete (int ,struct inode*,int *) ;
 int hfs_delete_inode (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;

__attribute__((used)) static int hfs_unlink(struct inode *dir, struct dentry *dentry)
{
 struct inode *inode;
 int res;

 inode = dentry->d_inode;
 res = hfs_cat_delete(inode->i_ino, dir, &dentry->d_name);
 if (res)
  return res;

 drop_nlink(inode);
 hfs_delete_inode(inode);
 inode->i_ctime = CURRENT_TIME_SEC;
 mark_inode_dirty(inode);

 return res;
}
