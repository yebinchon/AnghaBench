
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
struct TYPE_2__ {int cs_subsys; } ;


 int configfs_undepend_item (int *,struct config_item*) ;
 TYPE_1__ o2nm_cluster_group ;

void o2nm_undepend_item(struct config_item *item)
{
 configfs_undepend_item(&o2nm_cluster_group.cs_subsys, item);
}
