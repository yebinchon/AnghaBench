
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {scalar_t__ type; } ;


 scalar_t__ ARPHRD_AX25 ;


 int NOTIFY_DONE ;
 int ax25_dev_device_down (struct net_device*) ;
 int ax25_dev_device_up (struct net_device*) ;
 int ax25_kill_by_device (struct net_device*) ;
 int ax25_rt_device_down (struct net_device*) ;
 int dev_net (struct net_device*) ;
 int init_net ;
 int net_eq (int ,int *) ;

__attribute__((used)) static int ax25_device_event(struct notifier_block *this, unsigned long event,
 void *ptr)
{
 struct net_device *dev = (struct net_device *)ptr;

 if (!net_eq(dev_net(dev), &init_net))
  return NOTIFY_DONE;


 if (dev->type != ARPHRD_AX25)
  return NOTIFY_DONE;

 switch (event) {
 case 128:
  ax25_dev_device_up(dev);
  break;
 case 129:
  ax25_kill_by_device(dev);
  ax25_rt_device_down(dev);
  ax25_dev_device_down(dev);
  break;
 default:
  break;
 }

 return NOTIFY_DONE;
}
