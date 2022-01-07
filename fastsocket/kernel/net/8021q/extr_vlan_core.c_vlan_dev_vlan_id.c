
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int vlan_id; } ;


 TYPE_1__* vlan_dev_info (struct net_device const*) ;

u16 vlan_dev_vlan_id(const struct net_device *dev)
{
 return vlan_dev_info(dev)->vlan_id;
}
