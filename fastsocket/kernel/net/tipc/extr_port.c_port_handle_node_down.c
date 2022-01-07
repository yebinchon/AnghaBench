
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct port {int dummy; } ;


 int TIPC_ERR_NO_NODE ;
 struct sk_buff* port_build_self_abort_msg (struct port*,int ) ;
 int tipc_net_route_msg (struct sk_buff*) ;
 struct port* tipc_port_lock (unsigned long) ;
 int tipc_port_unlock (struct port*) ;

__attribute__((used)) static void port_handle_node_down(unsigned long ref)
{
 struct port *p_ptr = tipc_port_lock(ref);
 struct sk_buff* buf = ((void*)0);

 if (!p_ptr)
  return;
 buf = port_build_self_abort_msg(p_ptr, TIPC_ERR_NO_NODE);
 tipc_port_unlock(p_ptr);
 tipc_net_route_msg(buf);
}
