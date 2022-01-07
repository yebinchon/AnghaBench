
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sysfs_dirent {struct sysfs_dirent* s_parent; int s_name; } ;
struct kobject {struct sysfs_dirent* sd; } ;
struct dentry {TYPE_1__* d_inode; struct dentry* d_parent; } ;
struct TYPE_3__ {int i_mutex; } ;


 int BUG_ON (int) ;
 int EEXIST ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int d_add (struct dentry*,int *) ;
 struct dentry* d_alloc_name (struct dentry*,int ) ;
 int d_move (struct dentry*,struct dentry*) ;
 int dput (struct dentry*) ;
 int drop_nlink (TYPE_1__*) ;
 int inc_nlink (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ sysfs_find_dirent (struct sysfs_dirent*,int ) ;
 int sysfs_get (struct sysfs_dirent*) ;
 struct dentry* sysfs_get_dentry (struct sysfs_dirent*) ;
 int sysfs_link_sibling (struct sysfs_dirent*) ;
 int sysfs_mutex ;
 int sysfs_put (struct sysfs_dirent*) ;
 int sysfs_rename_mutex ;
 struct sysfs_dirent sysfs_root ;
 int sysfs_unlink_sibling (struct sysfs_dirent*) ;

int sysfs_move_dir(struct kobject *kobj, struct kobject *new_parent_kobj)
{
 struct sysfs_dirent *sd = kobj->sd;
 struct sysfs_dirent *new_parent_sd;
 struct dentry *old_parent, *new_parent = ((void*)0);
 struct dentry *old_dentry = ((void*)0), *new_dentry = ((void*)0);
 int error;

 mutex_lock(&sysfs_rename_mutex);
 BUG_ON(!sd->s_parent);
 new_parent_sd = (new_parent_kobj && new_parent_kobj->sd) ?
  new_parent_kobj->sd : &sysfs_root;

 error = 0;
 if (sd->s_parent == new_parent_sd)
  goto out;


 old_dentry = sysfs_get_dentry(sd);
 if (IS_ERR(old_dentry)) {
  error = PTR_ERR(old_dentry);
  old_dentry = ((void*)0);
  goto out;
 }
 old_parent = old_dentry->d_parent;

 new_parent = sysfs_get_dentry(new_parent_sd);
 if (IS_ERR(new_parent)) {
  error = PTR_ERR(new_parent);
  new_parent = ((void*)0);
  goto out;
 }

again:
 mutex_lock(&old_parent->d_inode->i_mutex);
 if (!mutex_trylock(&new_parent->d_inode->i_mutex)) {
  mutex_unlock(&old_parent->d_inode->i_mutex);
  goto again;
 }
 mutex_lock(&sysfs_mutex);

 error = -EEXIST;
 if (sysfs_find_dirent(new_parent_sd, sd->s_name))
  goto out_unlock;

 error = -ENOMEM;
 new_dentry = d_alloc_name(new_parent, sd->s_name);
 if (!new_dentry)
  goto out_unlock;

 error = 0;
 d_add(new_dentry, ((void*)0));
 d_move(old_dentry, new_dentry);


 sysfs_unlink_sibling(sd);
 sysfs_get(new_parent_sd);
 drop_nlink(old_parent->d_inode);
 sysfs_put(sd->s_parent);
 sd->s_parent = new_parent_sd;
 inc_nlink(new_parent->d_inode);
 sysfs_link_sibling(sd);

 out_unlock:
 mutex_unlock(&sysfs_mutex);
 mutex_unlock(&new_parent->d_inode->i_mutex);
 mutex_unlock(&old_parent->d_inode->i_mutex);
 out:
 dput(new_parent);
 dput(old_dentry);
 dput(new_dentry);
 mutex_unlock(&sysfs_rename_mutex);
 return error;
}
