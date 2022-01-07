
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_len; int features; int flags; scalar_t__ mtu; scalar_t__ hard_header_len; int type; int destructor; int * netdev_ops; } ;
struct ipv6hdr {int dummy; } ;
struct in6_addr {int dummy; } ;


 int ARPHRD_TUNNEL6 ;
 scalar_t__ ETH_DATA_LEN ;
 int IFF_NOARP ;
 scalar_t__ LL_MAX_HEADER ;
 int NETIF_F_NETNS_LOCAL ;
 int free_netdev ;
 int ip6_tnl_netdev_ops ;

__attribute__((used)) static void ip6_tnl_dev_setup(struct net_device *dev)
{
 dev->netdev_ops = &ip6_tnl_netdev_ops;
 dev->destructor = free_netdev;

 dev->type = ARPHRD_TUNNEL6;
 dev->hard_header_len = LL_MAX_HEADER + sizeof (struct ipv6hdr);
 dev->mtu = ETH_DATA_LEN - sizeof (struct ipv6hdr);
 dev->flags |= IFF_NOARP;
 dev->addr_len = sizeof(struct in6_addr);
 dev->features |= NETIF_F_NETNS_LOCAL;
}
