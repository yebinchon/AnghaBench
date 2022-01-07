
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct o2nm_node {int nd_item; } ;
struct TYPE_2__ {int cl_nodes_lock; struct o2nm_node** cl_nodes; } ;


 size_t O2NM_MAX_NODES ;
 int config_item_get (int *) ;
 TYPE_1__* o2nm_single_cluster ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct o2nm_node *o2nm_get_node_by_num(u8 node_num)
{
 struct o2nm_node *node = ((void*)0);

 if (node_num >= O2NM_MAX_NODES || o2nm_single_cluster == ((void*)0))
  goto out;

 read_lock(&o2nm_single_cluster->cl_nodes_lock);
 node = o2nm_single_cluster->cl_nodes[node_num];
 if (node)
  config_item_get(&node->nd_item);
 read_unlock(&o2nm_single_cluster->cl_nodes_lock);
out:
 return node;
}
