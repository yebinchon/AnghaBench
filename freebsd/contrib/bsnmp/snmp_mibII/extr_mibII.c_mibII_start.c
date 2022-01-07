
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int MIBII_POLL_TICKS ;
 int * fd_select (int ,int ,int *,int ) ;
 void* ifmib_reg ;
 void* ipForward_reg ;
 void* ipmib_reg ;
 int mibII_poll_ticks ;
 int * mibII_poll_timer ;
 int mib_arp_update () ;
 int mib_fetch_route () ;
 scalar_t__ mib_ifstack_last_change ;
 scalar_t__ mib_iftable_last_change ;
 int mib_refresh_iflist () ;
 int mibif_restart_mibII_poll_timer () ;
 int module ;
 int oid_ifMIB ;
 int oid_ipForward ;
 int oid_ipMIB ;
 int oid_tcpMIB ;
 int oid_udpMIB ;
 void* or_register (int *,char*,int ) ;
 int route ;
 int * route_fd ;
 int route_input ;
 int syslog (int ,char*) ;
 void* tcpmib_reg ;
 void* udpmib_reg ;
 int update_ifa_info () ;

__attribute__((used)) static void
mibII_start(void)
{
 if ((route_fd = fd_select(route, route_input, ((void*)0), module)) == ((void*)0)) {
  syslog(LOG_ERR, "fd_select(route): %m");
  return;
 }
 mib_refresh_iflist();
 update_ifa_info();
 mib_arp_update();
 (void)mib_fetch_route();
 mib_iftable_last_change = 0;
 mib_ifstack_last_change = 0;

 ifmib_reg = or_register(&oid_ifMIB,
     "The MIB module to describe generic objects for network interface"
     " sub-layers.", module);

 ipmib_reg = or_register(&oid_ipMIB,
    "The MIB module for managing IP and ICMP implementations, but "
    "excluding their management of IP routes.", module);

 tcpmib_reg = or_register(&oid_tcpMIB,
    "The MIB module for managing TCP implementations.", module);

 udpmib_reg = or_register(&oid_udpMIB,
    "The MIB module for managing UDP implementations.", module);

 ipForward_reg = or_register(&oid_ipForward,
    "The MIB module for the display of CIDR multipath IP Routes.",
    module);

 mibII_poll_timer = ((void*)0);
 mibII_poll_ticks = MIBII_POLL_TICKS;
 mibif_restart_mibII_poll_timer();
}
