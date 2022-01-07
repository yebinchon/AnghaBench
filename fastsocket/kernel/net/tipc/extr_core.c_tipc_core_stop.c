
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TIPC_NODE_MODE ;
 scalar_t__ TIPC_NOT_RUNNING ;
 int tipc_cfg_stop () ;
 int tipc_handler_stop () ;
 scalar_t__ tipc_mode ;
 int tipc_nametbl_stop () ;
 int tipc_netlink_stop () ;
 int tipc_ref_table_stop () ;
 int tipc_reg_stop () ;
 int tipc_socket_stop () ;
 int tipc_subscr_stop () ;

void tipc_core_stop(void)
{
 if (tipc_mode != TIPC_NODE_MODE)
  return;

 tipc_mode = TIPC_NOT_RUNNING;

 tipc_netlink_stop();
 tipc_handler_stop();
 tipc_cfg_stop();
 tipc_subscr_stop();
 tipc_reg_stop();
 tipc_nametbl_stop();
 tipc_ref_table_stop();
 tipc_socket_stop();
}
