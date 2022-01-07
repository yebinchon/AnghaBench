
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tipc_node {int dummy; } ;
struct cluster {int dummy; } ;
struct _zone {struct cluster** clusters; } ;


 struct tipc_node* tipc_cltr_select_node (struct cluster*,size_t) ;
 size_t tipc_cluster (size_t) ;
 size_t tipc_max_clusters ;

struct tipc_node *tipc_zone_select_remote_node(struct _zone *z_ptr, u32 addr, u32 ref)
{
 struct cluster *c_ptr;
 struct tipc_node *n_ptr;
 u32 c_num;

 if (!z_ptr)
  return ((void*)0);
 c_ptr = z_ptr->clusters[tipc_cluster(addr)];
 if (!c_ptr)
  return ((void*)0);
 n_ptr = tipc_cltr_select_node(c_ptr, ref);
 if (n_ptr)
  return n_ptr;


 for (c_num = 1; c_num <= tipc_max_clusters; c_num++) {
  c_ptr = z_ptr->clusters[c_num];
  if (!c_ptr)
   return ((void*)0);
  n_ptr = tipc_cltr_select_node(c_ptr, ref);
  if (n_ptr)
   return n_ptr;
 }
 return ((void*)0);
}
