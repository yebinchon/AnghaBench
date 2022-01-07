
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int ref; int connected; } ;
struct port {scalar_t__ probing_state; int probing_interval; int timer; TYPE_1__ publ; } ;


 int CONN_MANAGER ;
 int CONN_PROBE ;
 scalar_t__ PROBING ;
 int TIPC_ERR_NO_PORT ;
 int TIPC_OK ;
 int k_start_timer (int *,int ) ;
 struct sk_buff* port_build_proto_msg (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 struct sk_buff* port_build_self_abort_msg (struct port*,int ) ;
 int port_incr_out_seqno (struct port*) ;
 int port_out_seqno (struct port*) ;
 int port_peernode (struct port*) ;
 int port_peerport (struct port*) ;
 int tipc_net_route_msg (struct sk_buff*) ;
 int tipc_own_addr ;
 struct port* tipc_port_lock (unsigned long) ;
 int tipc_port_unlock (struct port*) ;

__attribute__((used)) static void port_timeout(unsigned long ref)
{
 struct port *p_ptr = tipc_port_lock(ref);
 struct sk_buff *buf = ((void*)0);

 if (!p_ptr)
  return;

 if (!p_ptr->publ.connected) {
  tipc_port_unlock(p_ptr);
  return;
 }


 if (p_ptr->probing_state == PROBING) {
  buf = port_build_self_abort_msg(p_ptr, TIPC_ERR_NO_PORT);
 } else {
  buf = port_build_proto_msg(port_peerport(p_ptr),
        port_peernode(p_ptr),
        p_ptr->publ.ref,
        tipc_own_addr,
        CONN_MANAGER,
        CONN_PROBE,
        TIPC_OK,
        port_out_seqno(p_ptr),
        0);
  port_incr_out_seqno(p_ptr);
  p_ptr->probing_state = PROBING;
  k_start_timer(&p_ptr->timer, p_ptr->probing_interval);
 }
 tipc_port_unlock(p_ptr);
 tipc_net_route_msg(buf);
}
