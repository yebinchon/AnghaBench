
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysfs_dirent {char* s_name; int s_parent; } ;
struct kobject {struct sysfs_dirent* sd; } ;
struct dentry {TYPE_1__* d_inode; struct dentry* d_parent; } ;
struct TYPE_2__ {int i_mutex; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int d_add (struct dentry*,int *) ;
 struct dentry* d_alloc_name (struct dentry*,char const*) ;
 int d_move (struct dentry*,struct dentry*) ;
 int dput (struct dentry*) ;
 int kfree (char const*) ;
 char* kstrdup (char const*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strcmp (char*,char const*) ;
 scalar_t__ sysfs_find_dirent (int ,char const*) ;
 struct dentry* sysfs_get_dentry (struct sysfs_dirent*) ;
 int sysfs_link_sibling (struct sysfs_dirent*) ;
 int sysfs_mutex ;
 int sysfs_rename_mutex ;
 int sysfs_unlink_sibling (struct sysfs_dirent*) ;

int sysfs_rename_dir(struct kobject * kobj, const char *new_name)
{
 struct sysfs_dirent *sd = kobj->sd;
 struct dentry *parent = ((void*)0);
 struct dentry *old_dentry = ((void*)0), *new_dentry = ((void*)0);
 const char *dup_name = ((void*)0);
 int error;

 mutex_lock(&sysfs_rename_mutex);

 error = 0;
 if (strcmp(sd->s_name, new_name) == 0)
  goto out;


 old_dentry = sysfs_get_dentry(sd);
 if (IS_ERR(old_dentry)) {
  error = PTR_ERR(old_dentry);
  old_dentry = ((void*)0);
  goto out;
 }

 parent = old_dentry->d_parent;


 mutex_lock(&parent->d_inode->i_mutex);
 mutex_lock(&sysfs_mutex);

 error = -EEXIST;
 if (sysfs_find_dirent(sd->s_parent, new_name))
  goto out_unlock;

 error = -ENOMEM;
 new_dentry = d_alloc_name(parent, new_name);
 if (!new_dentry)
  goto out_unlock;


 error = -ENOMEM;
 new_name = dup_name = kstrdup(new_name, GFP_KERNEL);
 if (!new_name)
  goto out_unlock;

 sysfs_unlink_sibling(sd);
 dup_name = sd->s_name;
 sd->s_name = new_name;
 sysfs_link_sibling(sd);


 d_add(new_dentry, ((void*)0));
 d_move(old_dentry, new_dentry);

 error = 0;
 out_unlock:
 mutex_unlock(&sysfs_mutex);
 mutex_unlock(&parent->d_inode->i_mutex);
 kfree(dup_name);
 dput(old_dentry);
 dput(new_dentry);
 out:
 mutex_unlock(&sysfs_rename_mutex);
 return error;
}
