
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int netdev; int bssid; } ;
typedef TYPE_2__ wlandevice_t ;
struct TYPE_4__ {int sa_data; int sa_family; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 int SIOCGIWAP ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;
 scalar_t__ wlan_wext_write ;

int p80211wext_event_associated(wlandevice_t * wlandev, int assoc)
{
 union iwreq_data data;


 data.ap_addr.sa_family = ARPHRD_ETHER;
 if (assoc)
  memcpy(data.ap_addr.sa_data, wlandev->bssid, ETH_ALEN);
 else
  memset(data.ap_addr.sa_data, 0, ETH_ALEN);

 if (wlan_wext_write)
  wireless_send_event(wlandev->netdev, SIOCGIWAP, &data, ((void*)0));

 if (!assoc)
  goto done;



done:
 return 0;
}
