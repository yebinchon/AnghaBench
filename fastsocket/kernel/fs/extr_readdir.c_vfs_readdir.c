
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_mutex; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_3__* f_op; TYPE_2__ f_path; } ;
typedef int filldir_t ;
struct TYPE_6__ {int (* readdir ) (struct file*,void*,int ) ;} ;
struct TYPE_4__ {struct inode* d_inode; } ;


 int ENOENT ;
 int ENOTDIR ;
 int IS_DEADDIR (struct inode*) ;
 int MAY_READ ;
 int file_accessed (struct file*) ;
 int mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 int security_file_permission (struct file*,int ) ;
 int stub1 (struct file*,void*,int ) ;

int vfs_readdir(struct file *file, filldir_t filler, void *buf)
{
 struct inode *inode = file->f_path.dentry->d_inode;
 int res = -ENOTDIR;
 if (!file->f_op || !file->f_op->readdir)
  goto out;

 res = security_file_permission(file, MAY_READ);
 if (res)
  goto out;

 res = mutex_lock_killable(&inode->i_mutex);
 if (res)
  goto out;

 res = -ENOENT;
 if (!IS_DEADDIR(inode)) {
  res = file->f_op->readdir(file, buf, filler);
  file_accessed(file);
 }
 mutex_unlock(&inode->i_mutex);
out:
 return res;
}
