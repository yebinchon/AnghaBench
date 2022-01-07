
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;


 int AARP_HASH_SIZE ;
 unsigned long NETDEV_DOWN ;
 int NOTIFY_DONE ;
 int __aarp_expire_device (int *,struct net_device*) ;
 int aarp_lock ;
 int dev_net (struct net_device*) ;
 int init_net ;
 int net_eq (int ,int *) ;
 int * proxies ;
 int * resolved ;
 int * unresolved ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int aarp_device_event(struct notifier_block *this, unsigned long event,
        void *ptr)
{
 struct net_device *dev = ptr;
 int ct;

 if (!net_eq(dev_net(dev), &init_net))
  return NOTIFY_DONE;

 if (event == NETDEV_DOWN) {
  write_lock_bh(&aarp_lock);

  for (ct = 0; ct < AARP_HASH_SIZE; ct++) {
   __aarp_expire_device(&resolved[ct], dev);
   __aarp_expire_device(&unresolved[ct], dev);
   __aarp_expire_device(&proxies[ct], dev);
  }

  write_unlock_bh(&aarp_lock);
 }
 return NOTIFY_DONE;
}
