
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_node {int nd_item; } ;
struct o2nm_cluster {int cl_nodes_lock; } ;
typedef int __be32 ;


 int config_item_get (int *) ;
 struct o2nm_node* o2nm_node_ip_tree_lookup (struct o2nm_cluster*,int ,int *,int *) ;
 struct o2nm_cluster* o2nm_single_cluster ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct o2nm_node *o2nm_get_node_by_ip(__be32 addr)
{
 struct o2nm_node *node = ((void*)0);
 struct o2nm_cluster *cluster = o2nm_single_cluster;

 if (cluster == ((void*)0))
  goto out;

 read_lock(&cluster->cl_nodes_lock);
 node = o2nm_node_ip_tree_lookup(cluster, addr, ((void*)0), ((void*)0));
 if (node)
  config_item_get(&node->nd_item);
 read_unlock(&cluster->cl_nodes_lock);

out:
 return node;
}
