
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int sent; int acked; } ;


 int TIPC_FLOW_CONTROL_WIN ;

__attribute__((used)) static inline int tipc_port_congested(struct port *p_ptr)
{
 return((p_ptr->sent - p_ptr->acked) >= (TIPC_FLOW_CONTROL_WIN * 2));
}
