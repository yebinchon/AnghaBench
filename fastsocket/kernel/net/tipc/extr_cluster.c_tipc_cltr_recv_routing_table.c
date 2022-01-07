
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unchar ;
typedef size_t u32 ;
struct tipc_node {int dummy; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int * data; } ;
struct cluster {struct tipc_node** nodes; int addr; } ;




 size_t LOWEST_SLAVE ;



 int assert (int) ;
 int buf_discard (struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int in_own_cluster (int ) ;
 int is_slave (size_t) ;
 int msg_hdr_sz (struct tipc_msg*) ;
 size_t msg_prevnode (struct tipc_msg*) ;
 size_t msg_remote_node (struct tipc_msg*) ;
 int msg_size (struct tipc_msg*) ;
 int msg_type (struct tipc_msg*) ;
 size_t tipc_addr (size_t,size_t,size_t) ;
 struct cluster* tipc_cltr_create (size_t) ;
 struct cluster* tipc_cltr_find (size_t) ;
 size_t tipc_cluster (size_t) ;
 size_t tipc_node (size_t) ;
 int tipc_node_add_router (struct tipc_node*,size_t) ;
 struct tipc_node* tipc_node_create (size_t) ;
 int tipc_node_remove_router (struct tipc_node*,size_t) ;
 size_t tipc_own_addr ;
 size_t tipc_zone (size_t) ;

void tipc_cltr_recv_routing_table(struct sk_buff *buf)
{
 struct tipc_msg *msg = buf_msg(buf);
 struct cluster *c_ptr;
 struct tipc_node *n_ptr;
 unchar *node_table;
 u32 table_size;
 u32 router;
 u32 rem_node = msg_remote_node(msg);
 u32 z_num;
 u32 c_num;
 u32 n_num;

 c_ptr = tipc_cltr_find(rem_node);
 if (!c_ptr) {
  c_ptr = tipc_cltr_create(rem_node);
  if (!c_ptr) {
   buf_discard(buf);
   return;
  }
 }

 node_table = buf->data + msg_hdr_sz(msg);
 table_size = msg_size(msg) - msg_hdr_sz(msg);
 router = msg_prevnode(msg);
 z_num = tipc_zone(rem_node);
 c_num = tipc_cluster(rem_node);

 switch (msg_type(msg)) {
 case 131:
  assert(is_slave(tipc_own_addr));
 case 132:
  for (n_num = 1; n_num < table_size; n_num++) {
   if (node_table[n_num]) {
    u32 addr = tipc_addr(z_num, c_num, n_num);
    n_ptr = c_ptr->nodes[n_num];
    if (!n_ptr) {
     n_ptr = tipc_node_create(addr);
    }
    if (n_ptr)
     tipc_node_add_router(n_ptr, router);
   }
  }
  break;
 case 128:
  assert(!is_slave(tipc_own_addr));
  assert(in_own_cluster(c_ptr->addr));
  for (n_num = 1; n_num < table_size; n_num++) {
   if (node_table[n_num]) {
    u32 slave_num = n_num + LOWEST_SLAVE;
    u32 addr = tipc_addr(z_num, c_num, slave_num);
    n_ptr = c_ptr->nodes[slave_num];
    if (!n_ptr) {
     n_ptr = tipc_node_create(addr);
    }
    if (n_ptr)
     tipc_node_add_router(n_ptr, router);
   }
  }
  break;
 case 130:
  if (!is_slave(tipc_own_addr)) {
   assert(!in_own_cluster(c_ptr->addr)
          || is_slave(rem_node));
  } else {
   assert(in_own_cluster(c_ptr->addr)
          && !is_slave(rem_node));
  }
  n_ptr = c_ptr->nodes[tipc_node(rem_node)];
  if (!n_ptr)
   n_ptr = tipc_node_create(rem_node);
  if (n_ptr)
   tipc_node_add_router(n_ptr, router);
  break;
 case 129:
  if (!is_slave(tipc_own_addr)) {
   assert(!in_own_cluster(c_ptr->addr)
          || is_slave(rem_node));
  } else {
   assert(in_own_cluster(c_ptr->addr)
          && !is_slave(rem_node));
  }
  n_ptr = c_ptr->nodes[tipc_node(rem_node)];
  if (n_ptr)
   tipc_node_remove_router(n_ptr, router);
  break;
 default:
  assert(!"Illegal routing manager message received\n");
 }
 buf_discard(buf);
}
