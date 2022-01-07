
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configfs_attribute {int dummy; } ;
struct config_item {int ci_dentry; } ;


 int BUG_ON (int) ;
 int CONFIGFS_ITEM_ATTR ;
 int configfs_add_file (int ,struct configfs_attribute const*,int ) ;

int configfs_create_file(struct config_item * item, const struct configfs_attribute * attr)
{
 BUG_ON(!item || !item->ci_dentry || !attr);

 return configfs_add_file(item->ci_dentry, attr,
     CONFIGFS_ITEM_ATTR);
}
