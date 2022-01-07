
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net_bridge {int dummy; } ;


 int br_features_recompute (struct net_bridge*) ;
 int br_multicast_open (struct net_bridge*) ;
 int br_stp_enable_bridge (struct net_bridge*) ;
 struct net_bridge* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;

__attribute__((used)) static int br_dev_open(struct net_device *dev)
{
 struct net_bridge *br = netdev_priv(dev);

 br_features_recompute(br);
 netif_start_queue(dev);
 br_stp_enable_bridge(br);
 br_multicast_open(br);

 return 0;
}
