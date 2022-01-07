
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct iphdr {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int ipip_tunnel_change_mtu(struct net_device *dev, int new_mtu)
{
 if (new_mtu < 68 || new_mtu > 0xFFF8 - sizeof(struct iphdr))
  return -EINVAL;
 dev->mtu = new_mtu;
 return 0;
}
