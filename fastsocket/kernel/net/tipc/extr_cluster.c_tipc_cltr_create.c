
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cluster {int highest_slave; struct _zone* owner; struct cluster* nodes; scalar_t__ highest_node; int addr; } ;
struct _zone {int dummy; } ;


 int GFP_ATOMIC ;
 int LOWEST_SLAVE ;
 scalar_t__ in_own_cluster (int ) ;
 struct cluster* kcalloc (int,int,int ) ;
 int kfree (struct cluster*) ;
 struct cluster* kzalloc (int,int ) ;
 int tipc_addr (int ,int ,int ) ;
 int tipc_cluster (int ) ;
 struct cluster* tipc_local_nodes ;
 int tipc_max_nodes ;
 int tipc_max_slaves ;
 int tipc_zone (int ) ;
 int tipc_zone_attach_cluster (struct _zone*,struct cluster*) ;
 struct _zone* tipc_zone_create (int ) ;
 struct _zone* tipc_zone_find (int ) ;
 int warn (char*) ;

struct cluster *tipc_cltr_create(u32 addr)
{
 struct _zone *z_ptr;
 struct cluster *c_ptr;
 int max_nodes;

 c_ptr = kzalloc(sizeof(*c_ptr), GFP_ATOMIC);
 if (c_ptr == ((void*)0)) {
  warn("Cluster creation failure, no memory\n");
  return ((void*)0);
 }

 c_ptr->addr = tipc_addr(tipc_zone(addr), tipc_cluster(addr), 0);
 if (in_own_cluster(addr))
  max_nodes = LOWEST_SLAVE + tipc_max_slaves;
 else
  max_nodes = tipc_max_nodes + 1;

 c_ptr->nodes = kcalloc(max_nodes + 1, sizeof(void*), GFP_ATOMIC);
 if (c_ptr->nodes == ((void*)0)) {
  warn("Cluster creation failure, no memory for node area\n");
  kfree(c_ptr);
  return ((void*)0);
 }

 if (in_own_cluster(addr))
  tipc_local_nodes = c_ptr->nodes;
 c_ptr->highest_slave = LOWEST_SLAVE - 1;
 c_ptr->highest_node = 0;

 z_ptr = tipc_zone_find(tipc_zone(addr));
 if (!z_ptr) {
  z_ptr = tipc_zone_create(addr);
 }
 if (!z_ptr) {
  kfree(c_ptr->nodes);
  kfree(c_ptr);
  return ((void*)0);
 }

 tipc_zone_attach_cluster(z_ptr, c_ptr);
 c_ptr->owner = z_ptr;
 return c_ptr;
}
