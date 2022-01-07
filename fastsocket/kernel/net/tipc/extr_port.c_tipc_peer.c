
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tipc_portid {int node; int ref; } ;
struct TYPE_2__ {scalar_t__ connected; } ;
struct port {TYPE_1__ publ; } ;


 int EINVAL ;
 int ENOTCONN ;
 int port_peernode (struct port*) ;
 int port_peerport (struct port*) ;
 struct port* tipc_port_lock (int ) ;
 int tipc_port_unlock (struct port*) ;

int tipc_peer(u32 ref, struct tipc_portid *peer)
{
 struct port *p_ptr;
 int res;

 p_ptr = tipc_port_lock(ref);
 if (!p_ptr)
  return -EINVAL;
 if (p_ptr->publ.connected) {
  peer->ref = port_peerport(p_ptr);
  peer->node = port_peernode(p_ptr);
  res = 0;
 } else
  res = -ENOTCONN;
 tipc_port_unlock(p_ptr);
 return res;
}
