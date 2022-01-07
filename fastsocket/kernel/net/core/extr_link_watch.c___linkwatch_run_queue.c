
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int state; struct net_device* link_watch_next; } ;


 scalar_t__ HZ ;
 int IFF_UP ;
 int LW_URGENT ;
 int __LINK_STATE_LINKWATCH_PENDING ;
 int clear_bit (int ,int *) ;
 int dev_activate (struct net_device*) ;
 int dev_deactivate (struct net_device*) ;
 int dev_put (struct net_device*) ;
 scalar_t__ jiffies ;
 int linkwatch_add_event (struct net_device*) ;
 int linkwatch_flags ;
 scalar_t__ linkwatch_nextevent ;
 int linkwatch_schedule_work (int ) ;
 int linkwatch_urgent_event (struct net_device*) ;
 struct net_device* lweventlist ;
 int lweventlist_lock ;
 int netdev_state_change (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int rfc2863_policy (struct net_device*) ;
 int smp_mb__before_clear_bit () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void __linkwatch_run_queue(int urgent_only)
{
 struct net_device *next;
 if (!urgent_only)
  linkwatch_nextevent = jiffies + HZ;

 else if (time_after(linkwatch_nextevent, jiffies + HZ))
  linkwatch_nextevent = jiffies;

 clear_bit(LW_URGENT, &linkwatch_flags);

 spin_lock_irq(&lweventlist_lock);
 next = lweventlist;
 lweventlist = ((void*)0);
 spin_unlock_irq(&lweventlist_lock);

 while (next) {
  struct net_device *dev = next;

  next = dev->link_watch_next;

  if (urgent_only && !linkwatch_urgent_event(dev)) {
   linkwatch_add_event(dev);
   continue;
  }





  smp_mb__before_clear_bit();




  clear_bit(__LINK_STATE_LINKWATCH_PENDING, &dev->state);

  rfc2863_policy(dev);
  if (dev->flags & IFF_UP) {
   if (netif_carrier_ok(dev))
    dev_activate(dev);
   else
    dev_deactivate(dev);

   netdev_state_change(dev);
  }

  dev_put(dev);
 }

 if (lweventlist)
  linkwatch_schedule_work(0);
}
