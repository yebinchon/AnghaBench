
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_space {int members_lock; int members_count; } ;
struct dlm_node {int list; } ;
struct config_item {int dummy; } ;
struct TYPE_2__ {int ci_parent; } ;
struct config_group {TYPE_1__ cg_item; } ;


 int config_item_put (struct config_item*) ;
 struct dlm_node* config_item_to_node (struct config_item*) ;
 struct dlm_space* config_item_to_space (int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void drop_node(struct config_group *g, struct config_item *i)
{
 struct dlm_space *sp = config_item_to_space(g->cg_item.ci_parent);
 struct dlm_node *nd = config_item_to_node(i);

 mutex_lock(&sp->members_lock);
 list_del(&nd->list);
 sp->members_count--;
 mutex_unlock(&sp->members_lock);

 config_item_put(i);
}
