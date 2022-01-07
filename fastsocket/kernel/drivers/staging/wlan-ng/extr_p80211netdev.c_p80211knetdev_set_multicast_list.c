
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* set_multicast_list ) (TYPE_1__*,TYPE_2__*) ;} ;
typedef TYPE_1__ wlandevice_t ;
struct TYPE_7__ {TYPE_1__* ml_priv; } ;
typedef TYPE_2__ netdevice_t ;


 int stub1 (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void p80211knetdev_set_multicast_list(netdevice_t *dev)
{
 wlandevice_t *wlandev = dev->ml_priv;



 if (wlandev->set_multicast_list)
  wlandev->set_multicast_list(wlandev, dev);

}
