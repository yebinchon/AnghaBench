
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {unsigned long multicast_querier; int multicast_lock; } ;


 int br_multicast_start_querier (struct net_bridge*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int br_multicast_set_querier(struct net_bridge *br, unsigned long val)
{
 val = !!val;

 spin_lock_bh(&br->multicast_lock);
 if (br->multicast_querier == val)
  goto unlock;

 br->multicast_querier = val;
 if (val)
  br_multicast_start_querier(br);

unlock:
 spin_unlock_bh(&br->multicast_lock);

 return 0;
}
