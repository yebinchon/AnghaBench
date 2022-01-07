
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int arp_ifdown (struct net_device*) ;
 int dev_net (struct net_device*) ;
 int fib_flush (int ) ;
 scalar_t__ fib_sync_down_dev (struct net_device*,int) ;
 int rt_cache_flush (int ,int ) ;

__attribute__((used)) static void fib_disable_ip(struct net_device *dev, int force)
{
 if (fib_sync_down_dev(dev, force))
  fib_flush(dev_net(dev));
 rt_cache_flush(dev_net(dev), 0);
 arp_ifdown(dev);
}
