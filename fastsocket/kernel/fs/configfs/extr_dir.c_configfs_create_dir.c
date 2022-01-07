
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct config_item {struct dentry* ci_dentry; TYPE_1__* ci_parent; } ;
struct TYPE_6__ {TYPE_2__* mnt_sb; } ;
struct TYPE_5__ {struct dentry* s_root; } ;
struct TYPE_4__ {struct dentry* ci_dentry; } ;


 int BUG_ON (int) ;
 int EFAULT ;
 TYPE_3__* configfs_mount ;
 int create_dir (struct config_item*,struct dentry*,struct dentry*) ;

__attribute__((used)) static int configfs_create_dir(struct config_item * item, struct dentry *dentry)
{
 struct dentry * parent;
 int error = 0;

 BUG_ON(!item);

 if (item->ci_parent)
  parent = item->ci_parent->ci_dentry;
 else if (configfs_mount && configfs_mount->mnt_sb)
  parent = configfs_mount->mnt_sb->s_root;
 else
  return -EFAULT;

 error = create_dir(item,parent,dentry);
 if (!error)
  item->ci_dentry = dentry;
 return error;
}
