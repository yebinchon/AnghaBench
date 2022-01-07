
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct zsKeyInfo {int keyLength; int flag; int * key; scalar_t__ macAddr; } ;
struct TYPE_3__ {int* txiv; void* encryMode; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 void* ZM_AES ;
 void* ZM_CENC ;
 int ZM_KEY_FLAG_CENC ;
 void* ZM_NO_WEP ;
 int ZM_STATUS_SUCCESS ;
 void* ZM_TKIP ;
 void* ZM_WEP128 ;
 void* ZM_WEP256 ;
 void* ZM_WEP64 ;
 TYPE_2__* wd ;
 int zfCoreSetKey (int *,int,int,void*,int*,int *) ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfiWlanPSEUDOSetKey(zdev_t* dev, struct zsKeyInfo keyInfo)
{


    u8_t micKey[16];

    zmw_get_wlan_dev(dev);

    switch (keyInfo.keyLength)
    {
        case 5:
            wd->sta.encryMode = ZM_WEP64;

            zfCoreSetKey(dev, 64, 0, ZM_WEP64, (u16_t *)keyInfo.macAddr, (u32_t*) keyInfo.key);
            break;

        case 13:
            wd->sta.encryMode = ZM_WEP128;

            zfCoreSetKey(dev, 64, 0, ZM_WEP128, (u16_t *)keyInfo.macAddr, (u32_t*) keyInfo.key);
            break;

        case 29:
            wd->sta.encryMode = ZM_WEP256;

            zfCoreSetKey(dev, 64, 1, ZM_WEP256, (u16_t *)keyInfo.macAddr, (u32_t*) (&keyInfo.key[16]));
            zfCoreSetKey(dev, 64, 0, ZM_WEP256, (u16_t *)keyInfo.macAddr, (u32_t*) keyInfo.key);
            break;

        case 16:
            wd->sta.encryMode = ZM_AES;

            zfCoreSetKey(dev, 64, 0, ZM_AES, (u16_t *)keyInfo.macAddr, (u32_t*) keyInfo.key);
            break;

        case 32:
            {
                wd->sta.encryMode = ZM_TKIP;
                zfCoreSetKey(dev, 64, 1, ZM_TKIP, (u16_t *)keyInfo.macAddr, (u32_t*) micKey);
                zfCoreSetKey(dev, 64, 0, ZM_TKIP, (u16_t *)keyInfo.macAddr, (u32_t*) keyInfo.key);
            }
            break;
        default:
            wd->sta.encryMode = ZM_NO_WEP;
    }

    return ZM_STATUS_SUCCESS;
}
