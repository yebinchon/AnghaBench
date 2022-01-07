
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef size_t u32_t ;
typedef void* u16_t ;
struct TYPE_6__ {size_t bssidCount; TYPE_1__* bssidInfo; } ;
struct TYPE_7__ {TYPE_2__ pmkidInfo; } ;
struct TYPE_8__ {TYPE_3__ sta; } ;
struct TYPE_5__ {int pmkid; void** bssid; } ;


 size_t ZM_PMKID_MAX_BSS_CNT ;
 TYPE_4__* wd ;
 int zfMemoryCopy (int ,int *,int) ;
 scalar_t__ zfMemoryIsEqual (int *,int *,int) ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfiWlanSetPmkidInfo(zdev_t* dev, u16_t* bssid, u8_t* pmkid)
{
    u32_t i;

    zmw_get_wlan_dev(dev);

    for(i=0; i<wd->sta.pmkidInfo.bssidCount; i++)
    {
        if ( zfMemoryIsEqual((u8_t*) wd->sta.pmkidInfo.bssidInfo[i].bssid,
                             (u8_t*) bssid, 6) )
        {

            break;
        }
    }

    if ( i < wd->sta.pmkidInfo.bssidCount )
    {

        zfMemoryCopy(wd->sta.pmkidInfo.bssidInfo[i].pmkid, pmkid, 16);
    }
    else
    {
        if ( i < ZM_PMKID_MAX_BSS_CNT )
        {
            wd->sta.pmkidInfo.bssidInfo[i].bssid[0] = bssid[0];
            wd->sta.pmkidInfo.bssidInfo[i].bssid[1] = bssid[1];
            wd->sta.pmkidInfo.bssidInfo[i].bssid[2] = bssid[2];

            zfMemoryCopy(wd->sta.pmkidInfo.bssidInfo[i].pmkid, pmkid, 16);
            wd->sta.pmkidInfo.bssidCount++;
        }
    }

    return 0;
}
