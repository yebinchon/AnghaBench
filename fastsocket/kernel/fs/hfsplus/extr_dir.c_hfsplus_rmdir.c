
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_size; int i_ctime; int i_ino; } ;
struct dentry {int d_name; struct inode* d_inode; } ;


 int CURRENT_TIME_SEC ;
 int ENOTEMPTY ;
 int clear_nlink (struct inode*) ;
 int hfsplus_delete_cat (int ,struct inode*,int *) ;
 int hfsplus_delete_inode (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;

__attribute__((used)) static int hfsplus_rmdir(struct inode *dir, struct dentry *dentry)
{
 struct inode *inode;
 int res;

 inode = dentry->d_inode;
 if (inode->i_size != 2)
  return -ENOTEMPTY;
 res = hfsplus_delete_cat(inode->i_ino, dir, &dentry->d_name);
 if (res)
  return res;
 clear_nlink(inode);
 inode->i_ctime = CURRENT_TIME_SEC;
 hfsplus_delete_inode(inode);
 mark_inode_dirty(inode);
 return 0;
}
