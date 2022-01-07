
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mtu; } ;
typedef TYPE_1__ netdevice_t ;


 int EINVAL ;

__attribute__((used)) static int wlan_change_mtu(netdevice_t *dev, int new_mtu)
{


 if ((new_mtu < 68) || (new_mtu > (2312 - 20 - 8)))
  return -EINVAL;

 dev->mtu = new_mtu;

 return 0;
}
