
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct in_ifaddr {TYPE_1__* ifa_dev; } ;
struct TYPE_2__ {struct net_device* dev; } ;


 int masq_device_event (struct notifier_block*,unsigned long,struct net_device*) ;

__attribute__((used)) static int masq_inet_event(struct notifier_block *this,
      unsigned long event,
      void *ptr)
{
 struct net_device *dev = ((struct in_ifaddr *)ptr)->ifa_dev->dev;
 return masq_device_event(this, event, dev);
}
