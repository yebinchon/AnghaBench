
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ supported; int acked; } ;
struct tipc_node {int addr; TYPE_1__ bclink; struct cluster* owner; } ;
struct cluster {int dummy; } ;
typedef int Handler ;


 int LOWEST_SLAVE ;
 int dbg (char*,int ) ;
 scalar_t__ in_own_cluster (int ) ;
 scalar_t__ is_slave (int ) ;
 int tipc_bclink_get_last_sent () ;
 int tipc_cltr_bcast_new_route (struct cluster*,int ,int,int ) ;
 int tipc_cltr_bcast_nodes ;
 struct cluster* tipc_cltr_create (int ) ;
 struct cluster* tipc_cltr_find (int ) ;
 int tipc_cltr_send_local_routes (struct cluster*,int ) ;
 int tipc_cltr_send_slave_routes (struct cluster*,int ) ;
 int tipc_highest_allowed_slave ;
 int tipc_k_signal (int ,int ) ;
 int tipc_max_nodes ;
 scalar_t__ tipc_named_node_up ;
 int tipc_net_send_external_routes (int ) ;
 int tipc_nmap_add (int *,int ) ;
 int tipc_node_has_active_routes (struct tipc_node*) ;
 int tipc_own_addr ;
 int tipc_own_tag ;

__attribute__((used)) static void node_established_contact(struct tipc_node *n_ptr)
{
 struct cluster *c_ptr;

 dbg("node_established_contact:-> %x\n", n_ptr->addr);
 if (!tipc_node_has_active_routes(n_ptr) && in_own_cluster(n_ptr->addr)) {
  tipc_k_signal((Handler)tipc_named_node_up, n_ptr->addr);
 }


 n_ptr->bclink.acked = tipc_bclink_get_last_sent();

 if (is_slave(tipc_own_addr))
  return;
 if (!in_own_cluster(n_ptr->addr)) {

  c_ptr = tipc_cltr_find(tipc_own_addr);
  if (!c_ptr)
   c_ptr = tipc_cltr_create(tipc_own_addr);
  if (c_ptr)
   tipc_cltr_bcast_new_route(c_ptr, n_ptr->addr, 1,
        tipc_max_nodes);
  return;
 }

 c_ptr = n_ptr->owner;
 if (is_slave(n_ptr->addr)) {

  tipc_cltr_bcast_new_route(c_ptr, n_ptr->addr, 1, tipc_max_nodes);
  tipc_cltr_send_local_routes(c_ptr, n_ptr->addr);
  return;
 }

 if (n_ptr->bclink.supported) {
  tipc_nmap_add(&tipc_cltr_bcast_nodes, n_ptr->addr);
  if (n_ptr->addr < tipc_own_addr)
   tipc_own_tag++;
 }


 tipc_net_send_external_routes(n_ptr->addr);
 tipc_cltr_send_slave_routes(c_ptr, n_ptr->addr);
 tipc_cltr_bcast_new_route(c_ptr, n_ptr->addr, LOWEST_SLAVE,
      tipc_highest_allowed_slave);
}
