
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_node {int last_router; int* routers; } ;


 int assert (int) ;
 int own_cluster () ;
 int own_zone () ;
 int tipc_addr (int ,int ,int) ;
 int tipc_max_nodes ;

u32 tipc_node_select_router(struct tipc_node *n_ptr, u32 ref)
{
 u32 ulim;
 u32 mask;
 u32 start;
 u32 r;

 if (!n_ptr)
  return 0;

 if (n_ptr->last_router < 0)
  return 0;
 ulim = ((n_ptr->last_router + 1) * 32) - 1;


 mask = tipc_max_nodes;
 while (mask > ulim)
  mask >>= 1;
 start = ref & mask;
 r = start;


 do {
  if (((n_ptr->routers[r / 32]) >> (r % 32)) & 1)
   break;
 } while (++r <= ulim);
 if (r > ulim) {
  r = 1;
  do {
   if (((n_ptr->routers[r / 32]) >> (r % 32)) & 1)
    break;
  } while (++r < start);
  assert(r != start);
 }
 assert(r && (r <= ulim));
 return tipc_addr(own_zone(), own_cluster(), r);
}
