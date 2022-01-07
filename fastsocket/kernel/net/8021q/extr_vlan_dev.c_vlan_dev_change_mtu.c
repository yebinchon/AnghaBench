
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct TYPE_4__ {TYPE_1__* real_dev; } ;
struct TYPE_3__ {int mtu; } ;


 int ERANGE ;
 TYPE_2__* vlan_dev_info (struct net_device*) ;

__attribute__((used)) static int vlan_dev_change_mtu(struct net_device *dev, int new_mtu)
{



 if (vlan_dev_info(dev)->real_dev->mtu < new_mtu)
  return -ERANGE;

 dev->mtu = new_mtu;

 return 0;
}
