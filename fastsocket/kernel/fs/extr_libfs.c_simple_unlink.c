
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mtime; int i_ctime; } ;
struct dentry {struct inode* d_inode; } ;


 int CURRENT_TIME ;
 int dput (struct dentry*) ;
 int drop_nlink (struct inode*) ;

int simple_unlink(struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = dentry->d_inode;

 inode->i_ctime = dir->i_ctime = dir->i_mtime = CURRENT_TIME;
 drop_nlink(inode);
 dput(dentry);
 return 0;
}
