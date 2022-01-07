
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysfs_dirent {int s_name; struct sysfs_dirent* s_parent; } ;
struct dentry {TYPE_1__* d_inode; struct sysfs_dirent* d_fsdata; } ;
struct TYPE_4__ {int s_root; } ;
struct TYPE_3__ {int i_mutex; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 struct dentry* dget (int ) ;
 int dput (struct dentry*) ;
 struct dentry* lookup_one_noperm (int ,struct dentry*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* sysfs_sb ;

struct dentry *sysfs_get_dentry(struct sysfs_dirent *sd)
{
 struct dentry *dentry = dget(sysfs_sb->s_root);

 while (dentry->d_fsdata != sd) {
  struct sysfs_dirent *cur;
  struct dentry *parent;


  cur = sd;
  while (cur->s_parent != dentry->d_fsdata)
   cur = cur->s_parent;


  parent = dentry;
  mutex_lock(&parent->d_inode->i_mutex);
  dentry = lookup_one_noperm(cur->s_name, parent);
  mutex_unlock(&parent->d_inode->i_mutex);
  dput(parent);

  if (IS_ERR(dentry))
   break;
 }
 return dentry;
}
