
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__** default_groups; } ;
struct dlm_cluster {TYPE_1__ group; } ;
struct config_item {int dummy; } ;
struct config_group {int dummy; } ;
struct TYPE_4__ {struct config_item cg_item; } ;


 int * comm_list ;
 int config_item_put (struct config_item*) ;
 struct dlm_cluster* config_item_to_cluster (struct config_item*) ;
 int * space_list ;

__attribute__((used)) static void drop_cluster(struct config_group *g, struct config_item *i)
{
 struct dlm_cluster *cl = config_item_to_cluster(i);
 struct config_item *tmp;
 int j;

 for (j = 0; cl->group.default_groups[j]; j++) {
  tmp = &cl->group.default_groups[j]->cg_item;
  cl->group.default_groups[j] = ((void*)0);
  config_item_put(tmp);
 }

 space_list = ((void*)0);
 comm_list = ((void*)0);

 config_item_put(i);
}
