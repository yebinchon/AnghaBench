
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct in_ifaddr {struct in_device* ifa_dev; } ;
struct in_device {int dev; } ;


 int NETDEV_CHANGE ;
 unsigned long NETDEV_UP ;
 int NOTIFY_DONE ;
 int clip_device_event (struct notifier_block*,int ,int ) ;

__attribute__((used)) static int clip_inet_event(struct notifier_block *this, unsigned long event,
      void *ifa)
{
 struct in_device *in_dev;

 in_dev = ((struct in_ifaddr *)ifa)->ifa_dev;




 if (event != NETDEV_UP)
  return NOTIFY_DONE;
 return clip_device_event(this, NETDEV_CHANGE, in_dev->dev);
}
