
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int s_mode; } ;
struct kobject {int sd; } ;
struct inode {int i_mode; int i_mutex; int i_sb; } ;
struct iattr {int ia_mode; int ia_valid; int ia_ctime; } ;
struct dentry {struct inode* d_inode; } ;
struct attribute {int name; } ;
typedef int mode_t ;


 int ATTR_CTIME ;
 int ATTR_MODE ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int S_IALLUGO ;
 int current_fs_time (int ) ;
 int dput (struct dentry*) ;
 int fsnotify_change (struct dentry*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct dentry* sysfs_get_dentry (struct sysfs_dirent*) ;
 struct sysfs_dirent* sysfs_get_dirent (int ,int ) ;
 int sysfs_mutex ;
 int sysfs_put (struct sysfs_dirent*) ;
 int sysfs_rename_mutex ;
 int sysfs_setattr (struct dentry*,struct iattr*) ;

int sysfs_chmod_file(struct kobject *kobj, struct attribute *attr, mode_t mode)
{
 struct sysfs_dirent *victim_sd = ((void*)0);
 struct dentry *victim = ((void*)0);
 struct inode * inode;
 struct iattr newattrs;
 int rc;

 rc = -ENOENT;
 victim_sd = sysfs_get_dirent(kobj->sd, attr->name);
 if (!victim_sd)
  goto out;

 mutex_lock(&sysfs_rename_mutex);
 victim = sysfs_get_dentry(victim_sd);
 mutex_unlock(&sysfs_rename_mutex);
 if (IS_ERR(victim)) {
  rc = PTR_ERR(victim);
  victim = ((void*)0);
  goto out;
 }

 inode = victim->d_inode;

 mutex_lock(&inode->i_mutex);

 newattrs.ia_mode = (mode & S_IALLUGO) | (inode->i_mode & ~S_IALLUGO);
 newattrs.ia_valid = ATTR_MODE | ATTR_CTIME;
 newattrs.ia_ctime = current_fs_time(inode->i_sb);
 rc = sysfs_setattr(victim, &newattrs);

 if (rc == 0) {
  fsnotify_change(victim, newattrs.ia_valid);
  mutex_lock(&sysfs_mutex);
  victim_sd->s_mode = newattrs.ia_mode;
  mutex_unlock(&sysfs_mutex);
 }

 mutex_unlock(&inode->i_mutex);
 out:
 dput(victim);
 sysfs_put(victim_sd);
 return rc;
}
