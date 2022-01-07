
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct net_device* link_watch_next; } ;


 struct net_device* lweventlist ;
 int lweventlist_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void linkwatch_add_event(struct net_device *dev)
{
 unsigned long flags;

 spin_lock_irqsave(&lweventlist_lock, flags);
 dev->link_watch_next = lweventlist;
 lweventlist = dev;
 spin_unlock_irqrestore(&lweventlist_lock, flags);
}
