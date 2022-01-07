
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__** default_groups; } ;
struct dlm_space {TYPE_2__ group; } ;
struct config_item {int dummy; } ;
struct config_group {int dummy; } ;
struct TYPE_3__ {struct config_item cg_item; } ;


 int config_item_put (struct config_item*) ;
 struct dlm_space* config_item_to_space (struct config_item*) ;

__attribute__((used)) static void drop_space(struct config_group *g, struct config_item *i)
{
 struct dlm_space *sp = config_item_to_space(i);
 struct config_item *tmp;
 int j;



 for (j = 0; sp->group.default_groups[j]; j++) {
  tmp = &sp->group.default_groups[j]->cg_item;
  sp->group.default_groups[j] = ((void*)0);
  config_item_put(tmp);
 }

 config_item_put(i);
}
