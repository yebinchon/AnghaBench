
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_count; int i_mtime; int i_ctime; } ;
struct dentry {struct inode* d_inode; } ;


 int CURRENT_TIME ;
 int atomic_inc (int *) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dget (struct dentry*) ;
 int inc_nlink (struct inode*) ;

int simple_link(struct dentry *old_dentry, struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = old_dentry->d_inode;

 inode->i_ctime = dir->i_ctime = dir->i_mtime = CURRENT_TIME;
 inc_nlink(inode);
 atomic_inc(&inode->i_count);
 dget(dentry);
 d_instantiate(dentry, inode);
 return 0;
}
