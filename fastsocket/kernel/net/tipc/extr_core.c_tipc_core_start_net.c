
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tipc_core_stop_net () ;
 int tipc_eth_media_start () ;
 int tipc_net_start (unsigned long) ;

int tipc_core_start_net(unsigned long addr)
{
 int res;

 if ((res = tipc_net_start(addr)) ||
     (res = tipc_eth_media_start())) {
  tipc_core_stop_net();
 }
 return res;
}
