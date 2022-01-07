
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int hard_header_len; int mtu; } ;
struct iphdr {int dummy; } ;
struct ip_tunnel {int hlen; } ;


 int EINVAL ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;

int ip_tunnel_change_mtu(struct net_device *dev, int new_mtu)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);
 int t_hlen = tunnel->hlen + sizeof(struct iphdr);

 if (new_mtu < 68 ||
     new_mtu > 0xFFF8 - dev->hard_header_len - t_hlen)
  return -EINVAL;
 dev->mtu = new_mtu;
 return 0;
}
