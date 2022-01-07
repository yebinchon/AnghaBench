
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ip6_base ;
 int unregister_net_sysctl_table (int ) ;

void ipv6_static_sysctl_unregister(void)
{
 unregister_net_sysctl_table(ip6_base);
}
