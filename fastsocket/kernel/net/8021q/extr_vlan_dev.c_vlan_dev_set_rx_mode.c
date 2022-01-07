
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int real_dev; } ;


 int dev_mc_sync (int ,struct net_device*) ;
 int dev_unicast_sync (int ,struct net_device*) ;
 TYPE_1__* vlan_dev_info (struct net_device*) ;

__attribute__((used)) static void vlan_dev_set_rx_mode(struct net_device *vlan_dev)
{
 dev_mc_sync(vlan_dev_info(vlan_dev)->real_dev, vlan_dev);
 dev_unicast_sync(vlan_dev_info(vlan_dev)->real_dev, vlan_dev);
}
