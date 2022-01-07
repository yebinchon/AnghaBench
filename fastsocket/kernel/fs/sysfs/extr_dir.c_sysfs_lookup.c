
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysfs_dirent {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {int name; } ;
struct dentry {int d_fsdata; int * d_op; TYPE_1__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_4__ {struct sysfs_dirent* d_fsdata; } ;


 int ENOENT ;
 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int d_rehash (struct dentry*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_dentry_ops ;
 struct sysfs_dirent* sysfs_find_dirent (struct sysfs_dirent*,int ) ;
 int sysfs_get (struct sysfs_dirent*) ;
 struct inode* sysfs_get_inode (struct sysfs_dirent*) ;
 int sysfs_mutex ;

__attribute__((used)) static struct dentry * sysfs_lookup(struct inode *dir, struct dentry *dentry,
    struct nameidata *nd)
{
 struct dentry *ret = ((void*)0);
 struct sysfs_dirent *parent_sd = dentry->d_parent->d_fsdata;
 struct sysfs_dirent *sd;
 struct inode *inode;

 mutex_lock(&sysfs_mutex);

 sd = sysfs_find_dirent(parent_sd, dentry->d_name.name);


 if (!sd) {
  ret = ERR_PTR(-ENOENT);
  goto out_unlock;
 }


 inode = sysfs_get_inode(sd);
 if (!inode) {
  ret = ERR_PTR(-ENOMEM);
  goto out_unlock;
 }


 dentry->d_op = &sysfs_dentry_ops;
 dentry->d_fsdata = sysfs_get(sd);
 d_instantiate(dentry, inode);
 d_rehash(dentry);

 out_unlock:
 mutex_unlock(&sysfs_mutex);
 return ret;
}
