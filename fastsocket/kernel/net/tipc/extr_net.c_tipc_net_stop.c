
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TIPC_NET_MODE ;
 scalar_t__ TIPC_NODE_MODE ;
 int info (char*) ;
 int net_stop () ;
 int tipc_bclink_stop () ;
 int tipc_bearer_stop () ;
 scalar_t__ tipc_mode ;
 int tipc_net_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void tipc_net_stop(void)
{
 if (tipc_mode != TIPC_NET_MODE)
  return;
 write_lock_bh(&tipc_net_lock);
 tipc_bearer_stop();
 tipc_mode = TIPC_NODE_MODE;
 tipc_bclink_stop();
 net_stop();
 write_unlock_bh(&tipc_net_lock);
 info("Left network mode \n");
}
