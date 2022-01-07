
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SVC_POOL_GLOBAL ;
 int SVC_POOL_PERCPU ;
 int SVC_POOL_PERNODE ;
 unsigned int any_online_node (int ) ;
 int node_online_map ;
 int nr_cpus_node (unsigned int) ;
 int nr_online_nodes ;

__attribute__((used)) static int
svc_pool_map_choose_mode(void)
{
 unsigned int node;

 if (nr_online_nodes > 1) {




  return SVC_POOL_PERNODE;
 }

 node = any_online_node(node_online_map);
 if (nr_cpus_node(node) > 2) {






  return SVC_POOL_PERCPU;
 }


 return SVC_POOL_GLOBAL;
}
