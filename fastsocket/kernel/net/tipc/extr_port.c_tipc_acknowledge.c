
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int conn_unacked; scalar_t__ connected; } ;
struct port {TYPE_1__ publ; } ;


 int CONN_ACK ;
 int CONN_MANAGER ;
 int TIPC_OK ;
 struct sk_buff* port_build_proto_msg (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int port_out_seqno (struct port*) ;
 int port_peernode (struct port*) ;
 int port_peerport (struct port*) ;
 int tipc_net_route_msg (struct sk_buff*) ;
 int tipc_own_addr ;
 struct port* tipc_port_lock (int ) ;
 int tipc_port_unlock (struct port*) ;

void tipc_acknowledge(u32 ref, u32 ack)
{
 struct port *p_ptr;
 struct sk_buff *buf = ((void*)0);

 p_ptr = tipc_port_lock(ref);
 if (!p_ptr)
  return;
 if (p_ptr->publ.connected) {
  p_ptr->publ.conn_unacked -= ack;
  buf = port_build_proto_msg(port_peerport(p_ptr),
        port_peernode(p_ptr),
        ref,
        tipc_own_addr,
        CONN_MANAGER,
        CONN_ACK,
        TIPC_OK,
        port_out_seqno(p_ptr),
        ack);
 }
 tipc_port_unlock(p_ptr);
 tipc_net_route_msg(buf);
}
