
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct inode {TYPE_1__* i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* create ) (struct inode*,struct dentry*,int,struct nameidata*) ;} ;


 int EACCES ;
 int S_IALLUGO ;
 int S_IFREG ;
 int fsnotify_create (struct inode*,struct dentry*) ;
 int may_create (struct inode*,struct dentry*) ;
 int security_inode_create (struct inode*,struct dentry*,int) ;
 int stub1 (struct inode*,struct dentry*,int,struct nameidata*) ;
 int vfs_dq_init (struct inode*) ;

int vfs_create(struct inode *dir, struct dentry *dentry, int mode,
  struct nameidata *nd)
{
 int error = may_create(dir, dentry);

 if (error)
  return error;

 if (!dir->i_op->create)
  return -EACCES;
 mode &= S_IALLUGO;
 mode |= S_IFREG;
 error = security_inode_create(dir, dentry, mode);
 if (error)
  return error;
 vfs_dq_init(dir);
 error = dir->i_op->create(dir, dentry, mode, nd);
 if (!error)
  fsnotify_create(dir, dentry);
 return error;
}
