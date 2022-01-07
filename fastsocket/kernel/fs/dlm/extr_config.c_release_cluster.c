
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dlm_cluster* default_groups; } ;
struct dlm_cluster {TYPE_1__ group; } ;
struct config_item {int dummy; } ;


 struct dlm_cluster* config_item_to_cluster (struct config_item*) ;
 int kfree (struct dlm_cluster*) ;

__attribute__((used)) static void release_cluster(struct config_item *i)
{
 struct dlm_cluster *cl = config_item_to_cluster(i);
 kfree(cl->group.default_groups);
 kfree(cl);
}
