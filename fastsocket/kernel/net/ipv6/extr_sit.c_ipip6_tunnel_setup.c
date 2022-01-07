
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_len; int features; scalar_t__ iflink; int priv_flags; int flags; scalar_t__ mtu; scalar_t__ hard_header_len; int type; int destructor; int * netdev_ops; } ;
struct iphdr {int dummy; } ;


 int ARPHRD_SIT ;
 scalar_t__ ETH_DATA_LEN ;
 int IFF_NOARP ;
 int IFF_XMIT_DST_RELEASE ;
 scalar_t__ LL_MAX_HEADER ;
 int NETIF_F_NETNS_LOCAL ;
 int free_netdev ;
 int ipip6_netdev_ops ;

__attribute__((used)) static void ipip6_tunnel_setup(struct net_device *dev)
{
 dev->netdev_ops = &ipip6_netdev_ops;
 dev->destructor = free_netdev;

 dev->type = ARPHRD_SIT;
 dev->hard_header_len = LL_MAX_HEADER + sizeof(struct iphdr);
 dev->mtu = ETH_DATA_LEN - sizeof(struct iphdr);
 dev->flags = IFF_NOARP;
 dev->priv_flags &= ~IFF_XMIT_DST_RELEASE;
 dev->iflink = 0;
 dev->addr_len = 4;
 dev->features |= NETIF_F_NETNS_LOCAL;
}
