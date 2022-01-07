
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ msdstate; int (* open ) (TYPE_1__*) ;int state; int netdev; } ;
typedef TYPE_1__ wlandevice_t ;
struct TYPE_6__ {TYPE_1__* ml_priv; } ;
typedef TYPE_2__ netdevice_t ;


 int EAGAIN ;
 int ENODEV ;
 int WLAN_DEVICE_OPEN ;
 scalar_t__ WLAN_MSD_RUNNING ;
 int netif_start_queue (int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int p80211knetdev_open(netdevice_t *netdev)
{
 int result = 0;
 wlandevice_t *wlandev = netdev->ml_priv;


 if (wlandev->msdstate != WLAN_MSD_RUNNING)
  return -ENODEV;


 if (wlandev->open != ((void*)0)) {
  result = wlandev->open(wlandev);
  if (result == 0) {
   netif_start_queue(wlandev->netdev);
   wlandev->state = WLAN_DEVICE_OPEN;
  }
 } else {
  result = -EAGAIN;
 }

 return result;
}
