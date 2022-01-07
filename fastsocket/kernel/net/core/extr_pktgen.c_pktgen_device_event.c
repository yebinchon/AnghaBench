
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int name; } ;




 int NOTIFY_DONE ;
 int dev_net (struct net_device*) ;
 int init_net ;
 int net_eq (int ,int *) ;
 int pktgen_change_name (struct net_device*) ;
 int pktgen_mark_device (int ) ;

__attribute__((used)) static int pktgen_device_event(struct notifier_block *unused,
          unsigned long event, void *ptr)
{
 struct net_device *dev = ptr;

 if (!net_eq(dev_net(dev), &init_net))
  return NOTIFY_DONE;





 switch (event) {
 case 129:
  pktgen_change_name(dev);
  break;

 case 128:
  pktgen_mark_device(dev->name);
  break;
 }

 return NOTIFY_DONE;
}
