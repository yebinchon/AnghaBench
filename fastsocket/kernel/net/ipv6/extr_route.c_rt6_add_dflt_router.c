
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt6_info {int dummy; } ;
struct net_device {int ifindex; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {int nl_net; int * nlh; int pid; } ;
struct fib6_config {int fc_flags; int fc_gateway; TYPE_1__ fc_nlinfo; int fc_ifindex; int fc_metric; int fc_table; } ;


 int IP6_RT_PRIO_USER ;
 int RT6_TABLE_DFLT ;
 int RTF_ADDRCONF ;
 int RTF_DEFAULT ;
 int RTF_EXPIRES ;
 int RTF_GATEWAY ;
 int RTF_PREF (unsigned int) ;
 int RTF_UP ;
 int dev_net (struct net_device*) ;
 int ip6_route_add (struct fib6_config*) ;
 int ipv6_addr_copy (int *,struct in6_addr*) ;
 struct rt6_info* rt6_get_dflt_router (struct in6_addr*,struct net_device*) ;

struct rt6_info *rt6_add_dflt_router(struct in6_addr *gwaddr,
         struct net_device *dev,
         unsigned int pref)
{
 struct fib6_config cfg = {
  .fc_table = RT6_TABLE_DFLT,
  .fc_metric = IP6_RT_PRIO_USER,
  .fc_ifindex = dev->ifindex,
  .fc_flags = RTF_GATEWAY | RTF_ADDRCONF | RTF_DEFAULT |
      RTF_UP | RTF_EXPIRES | RTF_PREF(pref),
  .fc_nlinfo.pid = 0,
  .fc_nlinfo.nlh = ((void*)0),
  .fc_nlinfo.nl_net = dev_net(dev),
 };

 ipv6_addr_copy(&cfg.fc_gateway, gwaddr);

 ip6_route_add(&cfg);

 return rt6_get_dflt_router(gwaddr, dev);
}
