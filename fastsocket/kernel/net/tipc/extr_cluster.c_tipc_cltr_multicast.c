
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_node {int addr; } ;
struct sk_buff {int dummy; } ;
struct cluster {int highest_slave; int highest_node; struct tipc_node** nodes; int addr; } ;


 int GFP_ATOMIC ;
 int LOWEST_SLAVE ;
 int assert (int) ;
 int buf_discard (struct sk_buff*) ;
 int buf_msg (struct sk_buff*) ;
 int in_own_cluster (int ) ;
 scalar_t__ is_slave (int) ;
 int msg_set_destnode (int ,int ) ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;
 int tipc_highest_allowed_slave ;
 int tipc_link_send (struct sk_buff*,int ,int ) ;
 int tipc_max_nodes ;
 scalar_t__ tipc_node_has_active_links (struct tipc_node*) ;

__attribute__((used)) static void tipc_cltr_multicast(struct cluster *c_ptr, struct sk_buff *buf,
    u32 lower, u32 upper)
{
 struct sk_buff *buf_copy;
 struct tipc_node *n_ptr;
 u32 n_num;
 u32 tstop;

 assert(lower <= upper);
 assert(((lower >= 1) && (lower <= tipc_max_nodes)) ||
        ((lower >= LOWEST_SLAVE) && (lower <= tipc_highest_allowed_slave)));
 assert(((upper >= 1) && (upper <= tipc_max_nodes)) ||
        ((upper >= LOWEST_SLAVE) && (upper <= tipc_highest_allowed_slave)));
 assert(in_own_cluster(c_ptr->addr));

 tstop = is_slave(upper) ? c_ptr->highest_slave : c_ptr->highest_node;
 if (tstop > upper)
  tstop = upper;
 for (n_num = lower; n_num <= tstop; n_num++) {
  n_ptr = c_ptr->nodes[n_num];
  if (n_ptr && tipc_node_has_active_links(n_ptr)) {
   buf_copy = skb_copy(buf, GFP_ATOMIC);
   if (buf_copy == ((void*)0))
    break;
   msg_set_destnode(buf_msg(buf_copy), n_ptr->addr);
   tipc_link_send(buf_copy, n_ptr->addr, n_ptr->addr);
  }
 }
 buf_discard(buf);
}
