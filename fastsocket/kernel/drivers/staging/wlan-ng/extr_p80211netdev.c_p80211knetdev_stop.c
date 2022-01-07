
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* close ) (TYPE_1__*) ;int state; int netdev; } ;
typedef TYPE_1__ wlandevice_t ;
struct TYPE_6__ {TYPE_1__* ml_priv; } ;
typedef TYPE_2__ netdevice_t ;


 int WLAN_DEVICE_CLOSED ;
 int netif_stop_queue (int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int p80211knetdev_stop(netdevice_t *netdev)
{
 int result = 0;
 wlandevice_t *wlandev = netdev->ml_priv;

 if (wlandev->close != ((void*)0))
  result = wlandev->close(wlandev);

 netif_stop_queue(wlandev->netdev);
 wlandev->state = WLAN_DEVICE_CLOSED;

 return result;
}
