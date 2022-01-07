
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* mkdir ) (struct inode*,struct dentry*,int) ;} ;


 int EPERM ;
 int S_IRWXUGO ;
 int S_ISVTX ;
 int fsnotify_mkdir (struct inode*,struct dentry*) ;
 int may_create (struct inode*,struct dentry*) ;
 int security_inode_mkdir (struct inode*,struct dentry*,int) ;
 int stub1 (struct inode*,struct dentry*,int) ;
 int vfs_dq_init (struct inode*) ;

int vfs_mkdir(struct inode *dir, struct dentry *dentry, int mode)
{
 int error = may_create(dir, dentry);

 if (error)
  return error;

 if (!dir->i_op->mkdir)
  return -EPERM;

 mode &= (S_IRWXUGO|S_ISVTX);
 error = security_inode_mkdir(dir, dentry, mode);
 if (error)
  return error;

 vfs_dq_init(dir);
 error = dir->i_op->mkdir(dir, dentry, mode);
 if (!error)
  fsnotify_mkdir(dir, dentry);
 return error;
}
