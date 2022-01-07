
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_mtu_change_arg {unsigned int mtu; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int dev_net (struct net_device*) ;
 int fib6_clean_all (int ,int ,int ,struct rt6_mtu_change_arg*) ;
 int rt6_mtu_change_route ;

void rt6_mtu_change(struct net_device *dev, unsigned mtu)
{
 struct rt6_mtu_change_arg arg = {
  .dev = dev,
  .mtu = mtu,
 };

 fib6_clean_all(dev_net(dev), rt6_mtu_change_route, 0, &arg);
}
