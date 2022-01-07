
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int watchdog_timeo; int watchdog_timer; TYPE_1__* netdev_ops; } ;
struct TYPE_2__ {scalar_t__ ndo_tx_timeout; } ;


 int HZ ;
 int dev_hold (struct net_device*) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 int round_jiffies (int) ;

void __netdev_watchdog_up(struct net_device *dev)
{
 if (dev->netdev_ops->ndo_tx_timeout) {
  if (dev->watchdog_timeo <= 0)
   dev->watchdog_timeo = 5*HZ;
  if (!mod_timer(&dev->watchdog_timer,
          round_jiffies(jiffies + dev->watchdog_timeo)))
   dev_hold(dev);
 }
}
