
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int ref; int connected; int phdr; } ;
struct port {scalar_t__ last_in_seqno; TYPE_1__ publ; } ;


 int TIPC_CONN_MSG ;
 scalar_t__ TIPC_CRITICAL_IMPORTANCE ;
 scalar_t__ msg_importance (int *) ;
 struct sk_buff* port_build_proto_msg (int ,int ,int ,int ,scalar_t__,int ,scalar_t__,scalar_t__,int ) ;
 int port_peernode (struct port*) ;
 int port_peerport (struct port*) ;
 int tipc_own_addr ;

__attribute__((used)) static struct sk_buff *port_build_self_abort_msg(struct port *p_ptr, u32 err)
{
 u32 imp = msg_importance(&p_ptr->publ.phdr);

 if (!p_ptr->publ.connected)
  return ((void*)0);
 if (imp < TIPC_CRITICAL_IMPORTANCE)
  imp++;
 return port_build_proto_msg(p_ptr->publ.ref,
        tipc_own_addr,
        port_peerport(p_ptr),
        port_peernode(p_ptr),
        imp,
        TIPC_CONN_MSG,
        err,
        p_ptr->last_in_seqno + 1,
        0);
}
