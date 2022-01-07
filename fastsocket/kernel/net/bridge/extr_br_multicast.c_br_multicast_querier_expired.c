
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int multicast_lock; scalar_t__ multicast_disabled; int dev; } ;


 int br_multicast_start_querier (struct net_bridge*) ;
 int netif_running (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void br_multicast_querier_expired(unsigned long data)
{
 struct net_bridge *br = (void *)data;

 spin_lock(&br->multicast_lock);
 if (!netif_running(br->dev) || br->multicast_disabled)
  goto out;

 br_multicast_start_querier(br);

out:
 spin_unlock(&br->multicast_lock);
}
