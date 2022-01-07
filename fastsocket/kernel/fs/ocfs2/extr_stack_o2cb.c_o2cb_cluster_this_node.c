
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int EOVERFLOW ;
 int O2NM_INVALID_NODE_NUM ;
 int O2NM_MAX_NODES ;
 int o2nm_this_node () ;

__attribute__((used)) static int o2cb_cluster_this_node(unsigned int *node)
{
 int node_num;

 node_num = o2nm_this_node();
 if (node_num == O2NM_INVALID_NODE_NUM)
  return -ENOENT;

 if (node_num >= O2NM_MAX_NODES)
  return -EOVERFLOW;

 *node = node_num;
 return 0;
}
