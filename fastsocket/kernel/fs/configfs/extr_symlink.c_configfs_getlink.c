
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {struct dentry* d_parent; } ;
struct config_item {int dummy; } ;


 int EINVAL ;
 int config_item_put (struct config_item*) ;
 struct config_item* configfs_get_config_item (struct dentry*) ;
 int configfs_get_target_path (struct config_item*,struct config_item*,char*) ;
 int configfs_rename_sem ;
 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static int configfs_getlink(struct dentry *dentry, char * path)
{
 struct config_item *item, *target_item;
 int error = 0;

 item = configfs_get_config_item(dentry->d_parent);
 if (!item)
  return -EINVAL;

 target_item = configfs_get_config_item(dentry);
 if (!target_item) {
  config_item_put(item);
  return -EINVAL;
 }

 down_read(&configfs_rename_sem);
 error = configfs_get_target_path(item, target_item, path);
 up_read(&configfs_rename_sem);

 config_item_put(item);
 config_item_put(target_item);
 return error;

}
