
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct _zone {scalar_t__* clusters; int addr; } ;


 scalar_t__ in_own_cluster (int ) ;
 int tipc_cltr_send_ext_routes (scalar_t__,size_t) ;
 size_t tipc_max_clusters ;

void tipc_zone_send_external_routes(struct _zone *z_ptr, u32 dest)
{
 u32 c_num;

 for (c_num = 1; c_num <= tipc_max_clusters; c_num++) {
  if (z_ptr->clusters[c_num]) {
   if (in_own_cluster(z_ptr->addr))
    continue;
   tipc_cltr_send_ext_routes(z_ptr->clusters[c_num], dest);
  }
 }
}
