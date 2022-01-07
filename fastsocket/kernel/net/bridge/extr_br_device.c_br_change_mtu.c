
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct TYPE_4__ {int* metrics; } ;
struct TYPE_5__ {TYPE_1__ dst; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct net_bridge {TYPE_3__ fake_rtable; } ;


 int EINVAL ;
 int RTAX_MTU ;
 int br_min_mtu (struct net_bridge*) ;
 struct net_bridge* netdev_priv (struct net_device*) ;

__attribute__((used)) static int br_change_mtu(struct net_device *dev, int new_mtu)
{
 struct net_bridge *br = netdev_priv(dev);
 if (new_mtu < 68 || new_mtu > br_min_mtu(br))
  return -EINVAL;

 dev->mtu = new_mtu;






 return 0;
}
