
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;


 int configfs_detach_item (struct config_item*) ;
 int detach_groups (int ) ;
 int to_config_group (struct config_item*) ;

__attribute__((used)) static void configfs_detach_group(struct config_item *item)
{
 detach_groups(to_config_group(item));
 configfs_detach_item(item);
}
