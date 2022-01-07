
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* real_dev; } ;


 TYPE_1__* vlan_dev_info (struct net_device const*) ;

struct net_device *vlan_dev_real_dev(const struct net_device *dev)
{
 return vlan_dev_info(dev)->real_dev;
}
