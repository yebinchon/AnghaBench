
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct zsBssInfo {scalar_t__ sortValue; scalar_t__ signalQuality; scalar_t__ signalStrength; } ;
struct TYPE_3__ {size_t bssInfoArrayTail; int bssInfoFreeCount; struct zsBssInfo** bssInfoArray; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 int ZM_MAX_BSS ;
 TYPE_2__* wd ;
 int zm_assert (int ) ;
 int zmw_get_wlan_dev (int *) ;

void zfBssInfoFree(zdev_t* dev, struct zsBssInfo* pBssInfo)
{
    zmw_get_wlan_dev(dev);

    zm_assert(wd->sta.bssInfoArray[wd->sta.bssInfoArrayTail] == ((void*)0));

    pBssInfo->signalStrength = pBssInfo->signalQuality = 0;
    pBssInfo->sortValue = 0;

    wd->sta.bssInfoArray[wd->sta.bssInfoArrayTail] = pBssInfo;
    wd->sta.bssInfoArrayTail = (wd->sta.bssInfoArrayTail + 1) & (ZM_MAX_BSS - 1);
    wd->sta.bssInfoFreeCount++;
}
