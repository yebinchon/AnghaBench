
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct zsHpPriv {scalar_t__ dot11Mode; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; } ;


 scalar_t__ ZM_CENC ;
 scalar_t__ ZM_HAL_80211_MODE_IBSS_WPA2PSK ;
 scalar_t__ ZM_TKIP ;
 scalar_t__ ZM_USER_KEY_DEFAULT ;
 TYPE_1__* wd ;
 int zfHpSetKey (int *,scalar_t__,int,scalar_t__,int *,int *) ;
 int zmw_get_wlan_dev (int *) ;

u32_t zfHpSetDefaultKey(zdev_t* dev, u8_t keyId, u8_t type, u32_t* key, u32_t* micKey)
{
    u16_t macAddr[3] = {0, 0, 0};
        zfHpSetKey(dev, ZM_USER_KEY_DEFAULT+keyId, 0, type, macAddr, key);

            if ((type == ZM_TKIP)




           )
    {
        zfHpSetKey(dev, ZM_USER_KEY_DEFAULT+keyId, 1, type, macAddr, micKey);
    }

    return 0;
}
