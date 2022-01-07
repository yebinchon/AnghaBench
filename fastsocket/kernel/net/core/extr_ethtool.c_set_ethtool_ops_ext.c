
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_ops_ext {int dummy; } ;
struct TYPE_2__ {struct ethtool_ops_ext const* ethtool_ops_ext; } ;


 TYPE_1__* netdev_extended (struct net_device*) ;

void set_ethtool_ops_ext(struct net_device *netdev, const struct ethtool_ops_ext *ops)
{
 netdev_extended(netdev)->ethtool_ops_ext = ops;
}
