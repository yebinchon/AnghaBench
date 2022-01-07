
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mutex; } ;
struct dentry {struct inode* d_inode; } ;


 int d_delete (struct dentry*) ;
 int dput (struct dentry*) ;
 int drop_nlink (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int usbfs_unlink (struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = dentry->d_inode;
 mutex_lock(&inode->i_mutex);
 drop_nlink(dentry->d_inode);
 dput(dentry);
 mutex_unlock(&inode->i_mutex);
 d_delete(dentry);
 return 0;
}
