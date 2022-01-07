
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct sysfs_dirent* target_sd; } ;
struct sysfs_dirent {TYPE_1__ s_symlink; struct sysfs_dirent* s_parent; } ;
struct dentry {struct sysfs_dirent* d_fsdata; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_get_target_path (struct sysfs_dirent*,struct sysfs_dirent*,char*) ;
 int sysfs_mutex ;

__attribute__((used)) static int sysfs_getlink(struct dentry *dentry, char * path)
{
 struct sysfs_dirent *sd = dentry->d_fsdata;
 struct sysfs_dirent *parent_sd = sd->s_parent;
 struct sysfs_dirent *target_sd = sd->s_symlink.target_sd;
 int error;

 mutex_lock(&sysfs_mutex);
 error = sysfs_get_target_path(parent_sd, target_sd, path);
 mutex_unlock(&sysfs_mutex);

 return error;
}
