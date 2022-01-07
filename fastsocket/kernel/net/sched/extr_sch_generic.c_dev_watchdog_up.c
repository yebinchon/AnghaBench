
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __netdev_watchdog_up (struct net_device*) ;

__attribute__((used)) static void dev_watchdog_up(struct net_device *dev)
{
 __netdev_watchdog_up(dev);
}
