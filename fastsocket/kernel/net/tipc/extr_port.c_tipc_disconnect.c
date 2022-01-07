
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_port {int dummy; } ;
struct port {int dummy; } ;


 int EINVAL ;
 int tipc_disconnect_port (struct tipc_port*) ;
 struct port* tipc_port_lock (int ) ;
 int tipc_port_unlock (struct port*) ;

int tipc_disconnect(u32 ref)
{
 struct port *p_ptr;
 int res;

 p_ptr = tipc_port_lock(ref);
 if (!p_ptr)
  return -EINVAL;
 res = tipc_disconnect_port((struct tipc_port *)p_ptr);
 tipc_port_unlock(p_ptr);
 return res;
}
