
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_3__ {scalar_t__ bssid; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 TYPE_2__* wd ;
 scalar_t__ zfMemoryIsEqual (int*,int*,int) ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfCompareWithBssid(zdev_t* dev, u16_t* bssid)
{
    zmw_get_wlan_dev(dev);

    if ( zfMemoryIsEqual((u8_t*)bssid, (u8_t*)wd->sta.bssid, 6) )
    {
        return 1;
    }
    else
    {
        return 0;
    }
}
