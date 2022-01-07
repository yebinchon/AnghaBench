
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {struct ec_device* ec_ptr; } ;
struct ec_device {size_t net; } ;



 int NOTIFY_DONE ;
 int dev_net (struct net_device*) ;
 int init_net ;
 int kfree (struct ec_device*) ;
 struct net_device** net2dev_map ;
 int net_eq (int ,int *) ;

__attribute__((used)) static int econet_notifier(struct notifier_block *this, unsigned long msg, void *data)
{
 struct net_device *dev = (struct net_device *)data;
 struct ec_device *edev;

 if (!net_eq(dev_net(dev), &init_net))
  return NOTIFY_DONE;

 switch (msg) {
 case 128:

  edev = dev->ec_ptr;
  if (edev)
  {
   if (net2dev_map[0] == dev)
    net2dev_map[0] = ((void*)0);
   net2dev_map[edev->net] = ((void*)0);
   kfree(edev);
   dev->ec_ptr = ((void*)0);
  }
  break;
 }

 return NOTIFY_DONE;
}
