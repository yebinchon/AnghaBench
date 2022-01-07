
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int phdr; } ;
struct port {TYPE_1__ publ; } ;


 int EINVAL ;
 scalar_t__ msg_importance (int *) ;
 struct port* tipc_port_lock (int ) ;
 int tipc_port_unlock (struct port*) ;

int tipc_portimportance(u32 ref, unsigned int *importance)
{
 struct port *p_ptr;

 p_ptr = tipc_port_lock(ref);
 if (!p_ptr)
  return -EINVAL;
 *importance = (unsigned int)msg_importance(&p_ptr->publ.phdr);
 tipc_port_unlock(p_ptr);
 return 0;
}
