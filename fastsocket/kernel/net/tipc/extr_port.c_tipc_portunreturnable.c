
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct port {int dummy; } ;


 int EINVAL ;
 unsigned int port_unreturnable (struct port*) ;
 struct port* tipc_port_lock (int ) ;
 int tipc_port_unlock (struct port*) ;

int tipc_portunreturnable(u32 ref, unsigned int *isunrejectable)
{
 struct port *p_ptr;

 p_ptr = tipc_port_lock(ref);
 if (!p_ptr)
  return -EINVAL;
 *isunrejectable = port_unreturnable(p_ptr);
 tipc_port_unlock(p_ptr);
 return 0;
}
