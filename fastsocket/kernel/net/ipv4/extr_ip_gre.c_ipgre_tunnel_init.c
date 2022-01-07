
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int addr_len; int * header_ops; int flags; int priv_flags; int type; int broadcast; int dev_addr; } ;
struct iphdr {scalar_t__ saddr; scalar_t__ daddr; } ;
struct TYPE_2__ {struct iphdr iph; } ;
struct ip_tunnel {TYPE_1__ parms; } ;


 int ARPHRD_IPGRE ;
 int EINVAL ;
 int IFF_BROADCAST ;
 int IFF_NOARP ;
 int IFF_XMIT_DST_RELEASE ;
 int __gre_tunnel_init (struct net_device*) ;
 int ip_tunnel_init (struct net_device*) ;
 int ipgre_header_ops ;
 scalar_t__ ipv4_is_multicast (scalar_t__) ;
 int memcpy (int ,scalar_t__*,int) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ipgre_tunnel_init(struct net_device *dev)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);
 struct iphdr *iph = &tunnel->parms.iph;

 __gre_tunnel_init(dev);

 memcpy(dev->dev_addr, &iph->saddr, 4);
 memcpy(dev->broadcast, &iph->daddr, 4);

 dev->type = ARPHRD_IPGRE;
 dev->flags = IFF_NOARP;
 dev->priv_flags &= ~IFF_XMIT_DST_RELEASE;
 dev->addr_len = 4;

 if (iph->daddr) {
 } else
  dev->header_ops = &ipgre_header_ops;

 return ip_tunnel_init(dev);
}
