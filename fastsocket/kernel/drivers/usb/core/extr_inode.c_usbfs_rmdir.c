
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mutex; int i_flags; } ;
struct dentry {struct inode* d_inode; } ;


 int ENOTEMPTY ;
 int S_DEAD ;
 int d_delete (struct dentry*) ;
 int dentry_unhash (struct dentry*) ;
 int dput (struct dentry*) ;
 int drop_nlink (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ usbfs_empty (struct dentry*) ;

__attribute__((used)) static int usbfs_rmdir(struct inode *dir, struct dentry *dentry)
{
 int error = -ENOTEMPTY;
 struct inode * inode = dentry->d_inode;

 mutex_lock(&inode->i_mutex);
 dentry_unhash(dentry);
 if (usbfs_empty(dentry)) {
  drop_nlink(dentry->d_inode);
  drop_nlink(dentry->d_inode);
  dput(dentry);
  inode->i_flags |= S_DEAD;
  drop_nlink(dir);
  error = 0;
 }
 mutex_unlock(&inode->i_mutex);
 if (!error)
  d_delete(dentry);
 dput(dentry);
 return error;
}
