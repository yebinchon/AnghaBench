
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct in_ifaddr {TYPE_1__* ifa_dev; } ;
struct TYPE_2__ {int * ifa_list; struct net_device* dev; } ;




 int NOTIFY_DONE ;
 int dev_net (struct net_device*) ;
 int fib_add_ifaddr (struct in_ifaddr*) ;
 int fib_del_ifaddr (struct in_ifaddr*) ;
 int fib_disable_ip (struct net_device*,int) ;
 int fib_sync_up (struct net_device*) ;
 int rt_cache_flush (int ,int) ;

__attribute__((used)) static int fib_inetaddr_event(struct notifier_block *this, unsigned long event, void *ptr)
{
 struct in_ifaddr *ifa = (struct in_ifaddr *)ptr;
 struct net_device *dev = ifa->ifa_dev->dev;

 switch (event) {
 case 128:
  fib_add_ifaddr(ifa);



  rt_cache_flush(dev_net(dev), -1);
  break;
 case 129:
  fib_del_ifaddr(ifa);
  if (ifa->ifa_dev->ifa_list == ((void*)0)) {



   fib_disable_ip(dev, 1);
  } else {
   rt_cache_flush(dev_net(dev), -1);
  }
  break;
 }
 return NOTIFY_DONE;
}
