
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device_stats {int dummy; } ;
struct TYPE_4__ {struct net_device_stats linux_stats; } ;
typedef TYPE_1__ wlandevice_t ;
struct TYPE_5__ {TYPE_1__* ml_priv; } ;
typedef TYPE_2__ netdevice_t ;



__attribute__((used)) static struct net_device_stats *p80211knetdev_get_stats(netdevice_t * netdev)
{
 wlandevice_t *wlandev = netdev->ml_priv;




 return &(wlandev->linux_stats);
}
