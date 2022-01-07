
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tipc_eth_media_stop () ;
 int tipc_net_stop () ;

void tipc_core_stop_net(void)
{
 tipc_eth_media_stop();
 tipc_net_stop();
}
