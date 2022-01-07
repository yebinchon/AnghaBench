
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct dentry {TYPE_1__* d_inode; struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int dummy; } ;
struct configfs_attribute {int ca_mode; } ;
struct TYPE_2__ {int i_mutex; } ;


 int I_MUTEX_NORMAL ;
 int S_IALLUGO ;
 int S_IFREG ;
 int configfs_make_dirent (struct configfs_dirent*,int *,void*,int,int) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;

int configfs_add_file(struct dentry * dir, const struct configfs_attribute * attr, int type)
{
 struct configfs_dirent * parent_sd = dir->d_fsdata;
 umode_t mode = (attr->ca_mode & S_IALLUGO) | S_IFREG;
 int error = 0;

 mutex_lock_nested(&dir->d_inode->i_mutex, I_MUTEX_NORMAL);
 error = configfs_make_dirent(parent_sd, ((void*)0), (void *) attr, mode, type);
 mutex_unlock(&dir->d_inode->i_mutex);

 return error;
}
