
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int * ci_parent; struct config_group* ci_group; int ci_entry; } ;
struct config_group {int dummy; } ;


 int config_group_put (struct config_group*) ;
 int config_item_put (struct config_item*) ;
 int list_del_init (int *) ;

__attribute__((used)) static void unlink_obj(struct config_item *item)
{
 struct config_group *group;

 group = item->ci_group;
 if (group) {
  list_del_init(&item->ci_entry);

  item->ci_group = ((void*)0);
  item->ci_parent = ((void*)0);


  config_item_put(item);


  config_group_put(group);
 }
}
