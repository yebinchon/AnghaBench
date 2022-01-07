
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_extended_frozen {int dummy; } ;
struct net_device {scalar_t__ reg_state; char* ifalias; int padded; } ;
struct device {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ NETREG_RELEASED ;
 int kfree (char*) ;
 struct net_device_extended_frozen* netdev_extended_frozen (struct net_device*) ;
 struct net_device* to_net_dev (struct device*) ;

__attribute__((used)) static void netdev_release(struct device *d)
{
 struct net_device *dev = to_net_dev(d);
 struct net_device_extended_frozen *dev_ext_frozen;

 BUG_ON(dev->reg_state != NETREG_RELEASED);

 kfree(dev->ifalias);
 dev_ext_frozen = netdev_extended_frozen(dev);
 kfree((char *)dev_ext_frozen - dev->padded);
}
