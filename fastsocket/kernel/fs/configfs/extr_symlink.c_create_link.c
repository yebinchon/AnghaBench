
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct configfs_symlink {int sl_list; int sl_target; } ;
struct configfs_dirent {int s_type; int s_links; } ;
struct config_item {TYPE_1__* ci_dentry; } ;
struct TYPE_2__ {struct configfs_dirent* d_fsdata; } ;


 int CONFIGFS_USET_DROPPING ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int config_item_get (struct config_item*) ;
 int config_item_put (struct config_item*) ;
 int configfs_create_link (struct configfs_symlink*,TYPE_1__*,struct dentry*) ;
 int configfs_dirent_is_ready (struct configfs_dirent*) ;
 int configfs_dirent_lock ;
 int kfree (struct configfs_symlink*) ;
 struct configfs_symlink* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int create_link(struct config_item *parent_item,
         struct config_item *item,
         struct dentry *dentry)
{
 struct configfs_dirent *target_sd = item->ci_dentry->d_fsdata;
 struct configfs_symlink *sl;
 int ret;

 ret = -ENOENT;
 if (!configfs_dirent_is_ready(target_sd))
  goto out;
 ret = -ENOMEM;
 sl = kmalloc(sizeof(struct configfs_symlink), GFP_KERNEL);
 if (sl) {
  sl->sl_target = config_item_get(item);
  spin_lock(&configfs_dirent_lock);
  if (target_sd->s_type & CONFIGFS_USET_DROPPING) {
   spin_unlock(&configfs_dirent_lock);
   config_item_put(item);
   kfree(sl);
   return -ENOENT;
  }
  list_add(&sl->sl_list, &target_sd->s_links);
  spin_unlock(&configfs_dirent_lock);
  ret = configfs_create_link(sl, parent_item->ci_dentry,
        dentry);
  if (ret) {
   spin_lock(&configfs_dirent_lock);
   list_del_init(&sl->sl_list);
   spin_unlock(&configfs_dirent_lock);
   config_item_put(item);
   kfree(sl);
  }
 }

out:
 return ret;
}
