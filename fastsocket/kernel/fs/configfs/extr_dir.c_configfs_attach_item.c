
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {TYPE_1__* d_inode; } ;
struct config_item {int dummy; } ;
struct TYPE_2__ {int i_mutex; int i_flags; } ;


 int S_DEAD ;
 int configfs_create_dir (struct config_item*,struct dentry*) ;
 int configfs_remove_dir (struct config_item*) ;
 int d_delete (struct dentry*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int populate_attrs (struct config_item*) ;

__attribute__((used)) static int configfs_attach_item(struct config_item *parent_item,
    struct config_item *item,
    struct dentry *dentry)
{
 int ret;

 ret = configfs_create_dir(item, dentry);
 if (!ret) {
  ret = populate_attrs(item);
  if (ret) {





   mutex_lock(&dentry->d_inode->i_mutex);
   configfs_remove_dir(item);
   dentry->d_inode->i_flags |= S_DEAD;
   mutex_unlock(&dentry->d_inode->i_mutex);
   d_delete(dentry);
  }
 }

 return ret;
}
