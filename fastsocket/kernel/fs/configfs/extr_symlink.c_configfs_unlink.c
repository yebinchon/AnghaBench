
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {scalar_t__ d_parent; struct configfs_dirent* d_fsdata; } ;
struct configfs_symlink {struct config_item* sl_target; int sl_list; } ;
struct configfs_dirent {int s_type; int s_sibling; struct configfs_symlink* s_element; } ;
struct config_item_type {TYPE_1__* ct_item_ops; } ;
struct config_item {struct config_item_type* ci_type; } ;
struct TYPE_4__ {scalar_t__ s_root; } ;
struct TYPE_3__ {int (* drop_link ) (struct config_item*,struct config_item*) ;} ;


 int BUG_ON (int) ;
 int CONFIGFS_ITEM_LINK ;
 int EPERM ;
 int config_item_put (struct config_item*) ;
 int configfs_dirent_lock ;
 int configfs_drop_dentry (struct configfs_dirent*,scalar_t__) ;
 struct config_item* configfs_get_config_item (scalar_t__) ;
 int configfs_put (struct configfs_dirent*) ;
 TYPE_2__* configfs_sb ;
 int dput (struct dentry*) ;
 int kfree (struct configfs_symlink*) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct config_item*,struct config_item*) ;

int configfs_unlink(struct inode *dir, struct dentry *dentry)
{
 struct configfs_dirent *sd = dentry->d_fsdata;
 struct configfs_symlink *sl;
 struct config_item *parent_item;
 struct config_item_type *type;
 int ret;

 ret = -EPERM;
 if (!(sd->s_type & CONFIGFS_ITEM_LINK))
  goto out;

 BUG_ON(dentry->d_parent == configfs_sb->s_root);

 sl = sd->s_element;

 parent_item = configfs_get_config_item(dentry->d_parent);
 type = parent_item->ci_type;

 spin_lock(&configfs_dirent_lock);
 list_del_init(&sd->s_sibling);
 spin_unlock(&configfs_dirent_lock);
 configfs_drop_dentry(sd, dentry->d_parent);
 dput(dentry);
 configfs_put(sd);






 if (type && type->ct_item_ops &&
     type->ct_item_ops->drop_link)
  type->ct_item_ops->drop_link(parent_item,
            sl->sl_target);

 spin_lock(&configfs_dirent_lock);
 list_del_init(&sl->sl_list);
 spin_unlock(&configfs_dirent_lock);


 config_item_put(sl->sl_target);
 kfree(sl);

 config_item_put(parent_item);

 ret = 0;

out:
 return ret;
}
