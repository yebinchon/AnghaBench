
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cluster {int dummy; } ;


 struct cluster* tipc_cltr_find (int ) ;
 int tipc_cltr_next_node (struct cluster*,int ) ;

u32 tipc_zone_next_node(u32 addr)
{
 struct cluster *c_ptr = tipc_cltr_find(addr);

 if (c_ptr)
  return tipc_cltr_next_node(c_ptr, addr);
 return 0;
}
