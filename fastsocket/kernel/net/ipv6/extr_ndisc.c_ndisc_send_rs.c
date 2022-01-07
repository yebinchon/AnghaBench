
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_len; } ;
struct inet6_ifaddr {int flags; } ;
struct in6_addr {int dummy; } ;
struct icmp6hdr {int icmp6_type; } ;


 int IFA_F_OPTIMISTIC ;
 int NDISC_ROUTER_SOLICITATION ;
 int ND_OPT_SOURCE_LL_ADDR ;
 int __ndisc_send (struct net_device*,int *,struct in6_addr const*,struct in6_addr const*,struct icmp6hdr*,int *,int ) ;
 int dev_net (struct net_device*) ;
 int in6_ifa_put (struct inet6_ifaddr*) ;
 struct inet6_ifaddr* ipv6_get_ifaddr (int ,struct in6_addr const*,struct net_device*,int) ;

void ndisc_send_rs(struct net_device *dev, const struct in6_addr *saddr,
     const struct in6_addr *daddr)
{
 struct icmp6hdr icmp6h = {
  .icmp6_type = NDISC_ROUTER_SOLICITATION,
 };
 int send_sllao = dev->addr_len;
 __ndisc_send(dev, ((void*)0), daddr, saddr,
       &icmp6h, ((void*)0),
       send_sllao ? ND_OPT_SOURCE_LL_ADDR : 0);
}
