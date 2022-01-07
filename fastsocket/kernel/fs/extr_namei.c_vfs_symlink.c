
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* symlink ) (struct inode*,struct dentry*,char const*) ;} ;


 int EPERM ;
 int fsnotify_create (struct inode*,struct dentry*) ;
 int may_create (struct inode*,struct dentry*) ;
 int security_inode_symlink (struct inode*,struct dentry*,char const*) ;
 int stub1 (struct inode*,struct dentry*,char const*) ;
 int vfs_dq_init (struct inode*) ;

int vfs_symlink(struct inode *dir, struct dentry *dentry, const char *oldname)
{
 int error = may_create(dir, dentry);

 if (error)
  return error;

 if (!dir->i_op->symlink)
  return -EPERM;

 error = security_inode_symlink(dir, dentry, oldname);
 if (error)
  return error;

 vfs_dq_init(dir);
 error = dir->i_op->symlink(dir, dentry, oldname);
 if (!error)
  fsnotify_create(dir, dentry);
 return error;
}
