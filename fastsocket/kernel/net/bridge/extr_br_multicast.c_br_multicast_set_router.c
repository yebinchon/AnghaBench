
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {unsigned long multicast_router; int multicast_lock; int multicast_router_timer; int dev; } ;


 int EINVAL ;
 int ENOENT ;
 int del_timer (int *) ;
 int netif_running (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int br_multicast_set_router(struct net_bridge *br, unsigned long val)
{
 int err = -ENOENT;

 spin_lock_bh(&br->multicast_lock);
 if (!netif_running(br->dev))
  goto unlock;

 switch (val) {
 case 0:
 case 2:
  del_timer(&br->multicast_router_timer);

 case 1:
  br->multicast_router = val;
  err = 0;
  break;

 default:
  err = -EINVAL;
  break;
 }

unlock:
 spin_unlock_bh(&br->multicast_lock);

 return err;
}
