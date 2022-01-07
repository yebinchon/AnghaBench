
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {TYPE_1__* d_inode; struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int s_type; } ;
struct config_item {int dummy; } ;
struct TYPE_2__ {int i_mutex; int i_flags; } ;


 int CONFIGFS_USET_DIR ;
 int I_MUTEX_CHILD ;
 int S_DEAD ;
 int configfs_adjust_dir_dirent_depth_after_populate (struct configfs_dirent*) ;
 int configfs_adjust_dir_dirent_depth_before_populate (struct configfs_dirent*) ;
 int configfs_attach_item (struct config_item*,struct config_item*,struct dentry*) ;
 int configfs_detach_item (struct config_item*) ;
 int d_delete (struct dentry*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int populate_groups (int ) ;
 int to_config_group (struct config_item*) ;

__attribute__((used)) static int configfs_attach_group(struct config_item *parent_item,
     struct config_item *item,
     struct dentry *dentry)
{
 int ret;
 struct configfs_dirent *sd;

 ret = configfs_attach_item(parent_item, item, dentry);
 if (!ret) {
  sd = dentry->d_fsdata;
  sd->s_type |= CONFIGFS_USET_DIR;
  mutex_lock_nested(&dentry->d_inode->i_mutex, I_MUTEX_CHILD);
  configfs_adjust_dir_dirent_depth_before_populate(sd);
  ret = populate_groups(to_config_group(item));
  if (ret) {
   configfs_detach_item(item);
   dentry->d_inode->i_flags |= S_DEAD;
  }
  configfs_adjust_dir_dirent_depth_after_populate(sd);
  mutex_unlock(&dentry->d_inode->i_mutex);
  if (ret)
   d_delete(dentry);
 }

 return ret;
}
