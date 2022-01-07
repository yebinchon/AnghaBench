
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct zsHpPriv {scalar_t__ dot11Mode; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; } ;


 int ZM_CENC ;
 scalar_t__ ZM_HAL_80211_MODE_IBSS_WPA2PSK ;
 int ZM_TKIP ;
 TYPE_1__* wd ;
 int zfHpSetKey (int *,int,int,int,int *,int *) ;
 int zmw_get_wlan_dev (int *) ;

u32_t zfHpSetPerUserKey(zdev_t* dev, u8_t user, u8_t keyId, u8_t* mac, u8_t type, u32_t* key, u32_t* micKey)
{
    zfHpSetKey(dev, user, keyId, type, (u16_t *)mac, key);


            if ((type == ZM_TKIP)



           )
    {
        zfHpSetKey(dev, user, keyId + 1, type, (u16_t *)mac, micKey);
    }
    return 0;
}
