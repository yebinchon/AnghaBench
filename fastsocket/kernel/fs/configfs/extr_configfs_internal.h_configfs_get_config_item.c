
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {struct configfs_dirent* d_fsdata; } ;
struct configfs_symlink {struct configfs_symlink* sl_target; } ;
struct configfs_dirent {int s_type; struct configfs_symlink* s_element; } ;
struct config_item {int dummy; } ;


 int CONFIGFS_ITEM_LINK ;
 struct config_item* config_item_get (struct configfs_symlink*) ;
 int d_unhashed (struct dentry*) ;
 int dcache_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline struct config_item *configfs_get_config_item(struct dentry *dentry)
{
 struct config_item * item = ((void*)0);

 spin_lock(&dcache_lock);
 if (!d_unhashed(dentry)) {
  struct configfs_dirent * sd = dentry->d_fsdata;
  if (sd->s_type & CONFIGFS_ITEM_LINK) {
   struct configfs_symlink * sl = sd->s_element;
   item = config_item_get(sl->sl_target);
  } else
   item = config_item_get(sd->s_element);
 }
 spin_unlock(&dcache_lock);

 return item;
}
