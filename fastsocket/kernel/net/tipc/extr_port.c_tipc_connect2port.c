
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tipc_portid {int node; int ref; } ;
struct tipc_msg {int dummy; } ;
struct TYPE_2__ {int connected; int max_pkt; int ref; struct tipc_msg phdr; scalar_t__ published; } ;
struct port {TYPE_1__ publ; int subscription; int probing_interval; int timer; int probing_state; } ;
typedef int net_ev_handler ;


 int CONFIRMED ;
 int EINVAL ;
 int LONG_H_SIZE ;
 int PROBING_INTERVAL ;
 int SHORT_H_SIZE ;
 int TIPC_CONN_MSG ;
 int k_start_timer (int *,int ) ;
 int may_route (int ) ;
 int msg_set_destnode (struct tipc_msg*,int ) ;
 int msg_set_destport (struct tipc_msg*,int ) ;
 int msg_set_hdr_sz (struct tipc_msg*,int ) ;
 int msg_set_orignode (struct tipc_msg*,int ) ;
 int msg_set_origport (struct tipc_msg*,int ) ;
 int msg_set_transp_seqno (struct tipc_msg*,int) ;
 int msg_set_type (struct tipc_msg*,int ) ;
 scalar_t__ port_handle_node_down ;
 int tipc_link_get_max_pkt (int ,scalar_t__) ;
 int tipc_nodesub_subscribe (int *,int ,void*,int ) ;
 int tipc_own_addr ;
 struct port* tipc_port_lock (scalar_t__) ;
 int tipc_port_unlock (struct port*) ;

int tipc_connect2port(u32 ref, struct tipc_portid const *peer)
{
 struct port *p_ptr;
 struct tipc_msg *msg;
 int res = -EINVAL;

 p_ptr = tipc_port_lock(ref);
 if (!p_ptr)
  return -EINVAL;
 if (p_ptr->publ.published || p_ptr->publ.connected)
  goto exit;
 if (!peer->ref)
  goto exit;

 msg = &p_ptr->publ.phdr;
 msg_set_destnode(msg, peer->node);
 msg_set_destport(msg, peer->ref);
 msg_set_orignode(msg, tipc_own_addr);
 msg_set_origport(msg, p_ptr->publ.ref);
 msg_set_transp_seqno(msg, 42);
 msg_set_type(msg, TIPC_CONN_MSG);
 if (!may_route(peer->node))
  msg_set_hdr_sz(msg, SHORT_H_SIZE);
 else
  msg_set_hdr_sz(msg, LONG_H_SIZE);

 p_ptr->probing_interval = PROBING_INTERVAL;
 p_ptr->probing_state = CONFIRMED;
 p_ptr->publ.connected = 1;
 k_start_timer(&p_ptr->timer, p_ptr->probing_interval);

 tipc_nodesub_subscribe(&p_ptr->subscription,peer->node,
     (void *)(unsigned long)ref,
     (net_ev_handler)port_handle_node_down);
 res = 0;
exit:
 tipc_port_unlock(p_ptr);
 p_ptr->publ.max_pkt = tipc_link_get_max_pkt(peer->node, ref);
 return res;
}
