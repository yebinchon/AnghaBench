
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct _zone {scalar_t__* clusters; } ;


 int tipc_cltr_remove_as_router (scalar_t__,size_t) ;
 size_t tipc_max_clusters ;

void tipc_zone_remove_as_router(struct _zone *z_ptr, u32 router)
{
 u32 c_num;

 for (c_num = 1; c_num <= tipc_max_clusters; c_num++) {
  if (z_ptr->clusters[c_num]) {
   tipc_cltr_remove_as_router(z_ptr->clusters[c_num],
         router);
  }
 }
}
