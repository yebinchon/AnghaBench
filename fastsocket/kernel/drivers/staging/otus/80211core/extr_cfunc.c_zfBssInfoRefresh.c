
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef int u16_t ;
struct zsBssInfo {int flag; int tick; struct zsBssInfo* next; } ;
struct TYPE_4__ {scalar_t__ bssCount; struct zsBssInfo* head; } ;
struct TYPE_5__ {TYPE_1__ bssList; } ;
struct TYPE_6__ {int tick; TYPE_2__ sta; } ;


 int ZM_BSS_CACHE_TIME_IN_MS ;
 int ZM_BSS_INFO_VALID_BIT ;
 int ZM_MS_PER_TICK ;
 TYPE_3__* wd ;
 int zfBssInfoFree (int *,struct zsBssInfo*) ;
 int zfBssInfoRemoveFromList (int *,struct zsBssInfo*) ;
 int zmw_get_wlan_dev (int *) ;

void zfBssInfoRefresh(zdev_t* dev, u16_t mode)
{
    struct zsBssInfo* pBssInfo;
    struct zsBssInfo* pNextBssInfo;
    u8_t i, bssCount;

    zmw_get_wlan_dev(dev);

    pBssInfo = wd->sta.bssList.head;
    bssCount = wd->sta.bssList.bssCount;

    for( i=0; i<bssCount; i++ )
    {
        if (mode == 1)
        {
            pNextBssInfo = pBssInfo->next;
            zfBssInfoRemoveFromList(dev, pBssInfo);
            zfBssInfoFree(dev, pBssInfo);
            pBssInfo = pNextBssInfo;
        }
        else
        {
            if ( pBssInfo->flag & ZM_BSS_INFO_VALID_BIT )
            {
                pBssInfo->flag &= ~ZM_BSS_INFO_VALID_BIT;
                pBssInfo = pBssInfo->next;
            }
            else
            {

                if ((wd->tick - pBssInfo->tick) > (20000/ZM_MS_PER_TICK))
                {
                    pNextBssInfo = pBssInfo->next;
                    zfBssInfoRemoveFromList(dev, pBssInfo);
                    zfBssInfoFree(dev, pBssInfo);
                    pBssInfo = pNextBssInfo;
                }
                else
                {
                    pBssInfo = pBssInfo->next;
                }
            }
        }
    }
    return;
}
