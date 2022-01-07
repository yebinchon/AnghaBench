
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int connected; } ;
struct port {TYPE_1__ publ; } ;


 int EINVAL ;
 struct port* tipc_port_lock (int ) ;
 int tipc_port_unlock (struct port*) ;

int tipc_isconnected(u32 ref, int *isconnected)
{
 struct port *p_ptr;

 p_ptr = tipc_port_lock(ref);
 if (!p_ptr)
  return -EINVAL;
 *isconnected = p_ptr->publ.connected;
 tipc_port_unlock(p_ptr);
 return 0;
}
