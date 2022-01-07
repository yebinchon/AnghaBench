
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_sb; scalar_t__ i_nlink; int i_mutex; TYPE_1__* i_op; int i_mode; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int (* link ) (struct dentry*,struct inode*,struct dentry*) ;} ;


 int ENOENT ;
 int EPERM ;
 int EXDEV ;
 scalar_t__ IS_APPEND (struct inode*) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 int fsnotify_link (struct inode*,struct inode*,struct dentry*) ;
 int may_create (struct inode*,struct dentry*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int security_inode_link (struct dentry*,struct inode*,struct dentry*) ;
 int stub1 (struct dentry*,struct inode*,struct dentry*) ;
 int vfs_dq_init (struct inode*) ;

int vfs_link(struct dentry *old_dentry, struct inode *dir, struct dentry *new_dentry)
{
 struct inode *inode = old_dentry->d_inode;
 int error;

 if (!inode)
  return -ENOENT;

 error = may_create(dir, new_dentry);
 if (error)
  return error;

 if (dir->i_sb != inode->i_sb)
  return -EXDEV;




 if (IS_APPEND(inode) || IS_IMMUTABLE(inode))
  return -EPERM;
 if (!dir->i_op->link)
  return -EPERM;
 if (S_ISDIR(inode->i_mode))
  return -EPERM;

 error = security_inode_link(old_dentry, dir, new_dentry);
 if (error)
  return error;

 mutex_lock(&inode->i_mutex);
 vfs_dq_init(dir);

 if (inode->i_nlink == 0)
  error = -ENOENT;
 else
  error = dir->i_op->link(old_dentry, dir, new_dentry);
 mutex_unlock(&inode->i_mutex);
 if (!error)
  fsnotify_link(dir, inode, new_dentry);
 return error;
}
