
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bssid; } ;
typedef TYPE_1__ wlandevice_t ;
struct sockaddr {int sa_family; int sa_data; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_5__ {TYPE_1__* ml_priv; } ;
typedef TYPE_2__ netdevice_t ;


 int ARPHRD_ETHER ;
 int WLAN_BSSID_LEN ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int p80211wext_giwap(netdevice_t *dev,
       struct iw_request_info *info,
       struct sockaddr *ap_addr, char *extra)
{

 wlandevice_t *wlandev = dev->ml_priv;

 memcpy(ap_addr->sa_data, wlandev->bssid, WLAN_BSSID_LEN);
 ap_addr->sa_family = ARPHRD_ETHER;

 return 0;
}
