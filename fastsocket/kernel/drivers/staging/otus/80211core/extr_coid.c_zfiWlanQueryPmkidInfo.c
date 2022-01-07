
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct zsPmkidBssidInfo {int dummy; } ;
struct TYPE_4__ {int bssidCount; } ;
struct TYPE_5__ {TYPE_1__ pmkidInfo; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;


 TYPE_3__* wd ;
 int zfMemoryCopy (int *,int *,int ) ;
 int zmw_get_wlan_dev (int *) ;

u32_t zfiWlanQueryPmkidInfo(zdev_t* dev, u8_t* buf, u32_t len)
{

    u32_t size;

    zmw_get_wlan_dev(dev);

    size = sizeof(u32_t) +
           wd->sta.pmkidInfo.bssidCount * sizeof(struct zsPmkidBssidInfo);

    if ( len < size )
    {
        return wd->sta.pmkidInfo.bssidCount;
    }

    zfMemoryCopy(buf, (u8_t*) &wd->sta.pmkidInfo, (u16_t) size);

    return 0;
}
