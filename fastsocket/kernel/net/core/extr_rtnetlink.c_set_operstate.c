
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned char operstate; } ;



 unsigned char IF_OPER_UNKNOWN ;

 int dev_base_lock ;
 int netdev_state_change (struct net_device*) ;
 int netif_dormant (struct net_device*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void set_operstate(struct net_device *dev, unsigned char transition)
{
 unsigned char operstate = dev->operstate;

 switch(transition) {
 case 128:
  if ((operstate == 129 ||
       operstate == IF_OPER_UNKNOWN) &&
      !netif_dormant(dev))
   operstate = 128;
  break;

 case 129:
  if (operstate == 128 ||
      operstate == IF_OPER_UNKNOWN)
   operstate = 129;
  break;
 }

 if (dev->operstate != operstate) {
  write_lock_bh(&dev_base_lock);
  dev->operstate = operstate;
  write_unlock_bh(&dev_base_lock);
  netdev_state_change(dev);
 }
}
