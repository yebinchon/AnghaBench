
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct cluster {int addr; } ;
struct _zone {struct cluster** clusters; } ;


 int assert (int) ;
 size_t tipc_cluster (int) ;
 size_t tipc_max_clusters ;

void tipc_zone_attach_cluster(struct _zone *z_ptr, struct cluster *c_ptr)
{
 u32 c_num = tipc_cluster(c_ptr->addr);

 assert(c_ptr->addr);
 assert(c_num <= tipc_max_clusters);
 assert(z_ptr->clusters[c_num] == ((void*)0));
 z_ptr->clusters[c_num] = c_ptr;
}
