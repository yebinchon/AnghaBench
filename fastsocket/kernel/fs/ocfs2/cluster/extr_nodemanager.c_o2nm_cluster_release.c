
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct o2nm_cluster* default_groups; } ;
struct o2nm_cluster {TYPE_1__ cl_group; } ;
struct config_item {int dummy; } ;


 int kfree (struct o2nm_cluster*) ;
 struct o2nm_cluster* to_o2nm_cluster (struct config_item*) ;

__attribute__((used)) static void o2nm_cluster_release(struct config_item *item)
{
 struct o2nm_cluster *cluster = to_o2nm_cluster(item);

 kfree(cluster->cl_group.default_groups);
 kfree(cluster);
}
