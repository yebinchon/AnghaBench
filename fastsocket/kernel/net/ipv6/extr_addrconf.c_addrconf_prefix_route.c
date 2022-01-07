
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {scalar_t__ type; int flags; int ifindex; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {int nl_net; } ;
struct fib6_config {unsigned long fc_expires; int fc_dst_len; int fc_flags; int fc_dst; int fc_protocol; TYPE_1__ fc_nlinfo; int fc_ifindex; int fc_metric; int fc_table; } ;


 scalar_t__ ARPHRD_SIT ;
 int IFF_POINTOPOINT ;
 int IP6_RT_PRIO_ADDRCONF ;
 int RT6_TABLE_PREFIX ;
 int RTF_NONEXTHOP ;
 int RTF_UP ;
 int RTPROT_KERNEL ;
 int dev_net (struct net_device*) ;
 int ip6_route_add (struct fib6_config*) ;
 int ipv6_addr_copy (int *,struct in6_addr*) ;

__attribute__((used)) static void
addrconf_prefix_route(struct in6_addr *pfx, int plen, struct net_device *dev,
        unsigned long expires, u32 flags)
{
 struct fib6_config cfg = {
  .fc_table = RT6_TABLE_PREFIX,
  .fc_metric = IP6_RT_PRIO_ADDRCONF,
  .fc_ifindex = dev->ifindex,
  .fc_expires = expires,
  .fc_dst_len = plen,
  .fc_flags = RTF_UP | flags,
  .fc_nlinfo.nl_net = dev_net(dev),
  .fc_protocol = RTPROT_KERNEL,
 };

 ipv6_addr_copy(&cfg.fc_dst, pfx);
 ip6_route_add(&cfg);
}
