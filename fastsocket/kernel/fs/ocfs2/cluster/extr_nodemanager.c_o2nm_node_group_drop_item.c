
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct o2nm_node {size_t nd_num; int nd_ip_node; scalar_t__ nd_ipv4_address; } ;
struct o2nm_cluster {size_t cl_local_node; int cl_nodes_lock; int cl_nodes_bitmap; struct o2nm_node** cl_nodes; int cl_node_ip_tree; scalar_t__ cl_has_local; } ;
struct config_item {int dummy; } ;
struct TYPE_2__ {int ci_parent; } ;
struct config_group {TYPE_1__ cg_item; } ;


 size_t O2NM_INVALID_NODE_NUM ;
 int clear_bit (size_t,int ) ;
 int config_item_put (struct config_item*) ;
 int o2net_disconnect_node (struct o2nm_node*) ;
 int o2net_stop_listening (struct o2nm_node*) ;
 int rb_erase (int *,int *) ;
 struct o2nm_cluster* to_o2nm_cluster (int ) ;
 struct o2nm_node* to_o2nm_node (struct config_item*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void o2nm_node_group_drop_item(struct config_group *group,
          struct config_item *item)
{
 struct o2nm_node *node = to_o2nm_node(item);
 struct o2nm_cluster *cluster = to_o2nm_cluster(group->cg_item.ci_parent);

 o2net_disconnect_node(node);

 if (cluster->cl_has_local &&
     (cluster->cl_local_node == node->nd_num)) {
  cluster->cl_has_local = 0;
  cluster->cl_local_node = O2NM_INVALID_NODE_NUM;
  o2net_stop_listening(node);
 }



 write_lock(&cluster->cl_nodes_lock);


 if (node->nd_ipv4_address)
  rb_erase(&node->nd_ip_node, &cluster->cl_node_ip_tree);


 if (cluster->cl_nodes[node->nd_num] == node) {
  cluster->cl_nodes[node->nd_num] = ((void*)0);
  clear_bit(node->nd_num, cluster->cl_nodes_bitmap);
 }
 write_unlock(&cluster->cl_nodes_lock);

 config_item_put(item);
}
