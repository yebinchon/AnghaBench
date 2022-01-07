
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u16_t ;
struct TYPE_3__ {int* bssid; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ sta; } ;


 scalar_t__ ZM_MODE_AP ;
 int ZM_WLAN_FRAME_TYPE_DEAUTH ;
 TYPE_2__* wd ;
 int zfSendMmFrame (int *,int ,int*,int,int ,int ) ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfiWlanDeauth(zdev_t *dev, u16_t *macAddr, u16_t reason)
{
 zmw_get_wlan_dev(dev);

 if (wd->wlanMode == ZM_MODE_AP) {
  zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_DEAUTH, macAddr,
        reason, 0, 0);
 } else
  zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_DEAUTH,
      wd->sta.bssid, 3, 0, 0);


 return 0;
}
