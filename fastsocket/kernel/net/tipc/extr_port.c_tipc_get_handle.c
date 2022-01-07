
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {void* usr_handle; } ;
struct port {TYPE_1__ publ; } ;


 struct port* tipc_port_lock (int const) ;
 int tipc_port_unlock (struct port*) ;

void *tipc_get_handle(const u32 ref)
{
 struct port *p_ptr;
 void * handle;

 p_ptr = tipc_port_lock(ref);
 if (!p_ptr)
  return ((void*)0);
 handle = p_ptr->publ.usr_handle;
 tipc_port_unlock(p_ptr);
 return handle;
}
