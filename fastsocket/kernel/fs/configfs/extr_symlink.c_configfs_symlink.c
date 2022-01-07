
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct path {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {TYPE_3__* d_parent; } ;
struct configfs_dirent {int dummy; } ;
struct config_item_type {TYPE_1__* ct_item_ops; } ;
struct config_item {struct config_item_type* ci_type; } ;
struct TYPE_6__ {struct configfs_dirent* d_fsdata; } ;
struct TYPE_5__ {TYPE_3__* s_root; } ;
struct TYPE_4__ {int (* allow_link ) (struct config_item*,struct config_item*) ;int (* drop_link ) (struct config_item*,struct config_item*) ;} ;


 int ENOENT ;
 int EPERM ;
 int config_item_put (struct config_item*) ;
 int configfs_dirent_is_ready (struct configfs_dirent*) ;
 struct config_item* configfs_get_config_item (TYPE_3__*) ;
 TYPE_2__* configfs_sb ;
 int configfs_symlink_mutex ;
 int create_link (struct config_item*,struct config_item*,struct dentry*) ;
 int get_target (char const*,struct path*,struct config_item**) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int path_put (struct path*) ;
 int stub1 (struct config_item*,struct config_item*) ;
 int stub2 (struct config_item*,struct config_item*) ;

int configfs_symlink(struct inode *dir, struct dentry *dentry, const char *symname)
{
 int ret;
 struct path path;
 struct configfs_dirent *sd;
 struct config_item *parent_item;
 struct config_item *target_item = ((void*)0);
 struct config_item_type *type;

 ret = -EPERM;
 if (dentry->d_parent == configfs_sb->s_root)
  goto out;

 sd = dentry->d_parent->d_fsdata;




 ret = -ENOENT;
 if (!configfs_dirent_is_ready(sd))
  goto out;

 parent_item = configfs_get_config_item(dentry->d_parent);
 type = parent_item->ci_type;

 ret = -EPERM;
 if (!type || !type->ct_item_ops ||
     !type->ct_item_ops->allow_link)
  goto out_put;

 ret = get_target(symname, &path, &target_item);
 if (ret)
  goto out_put;

 ret = type->ct_item_ops->allow_link(parent_item, target_item);
 if (!ret) {
  mutex_lock(&configfs_symlink_mutex);
  ret = create_link(parent_item, target_item, dentry);
  mutex_unlock(&configfs_symlink_mutex);
  if (ret && type->ct_item_ops->drop_link)
   type->ct_item_ops->drop_link(parent_item,
           target_item);
 }

 config_item_put(target_item);
 path_put(&path);

out_put:
 config_item_put(parent_item);

out:
 return ret;
}
