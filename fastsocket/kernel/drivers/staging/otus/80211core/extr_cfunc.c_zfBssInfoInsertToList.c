
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
struct zsBssInfo {struct zsBssInfo* next; } ;
struct TYPE_5__ {scalar_t__ bssCount; struct zsBssInfo* tail; struct zsBssInfo* head; } ;
struct TYPE_4__ {TYPE_2__ bssList; } ;
struct TYPE_6__ {TYPE_1__ sta; } ;


 TYPE_3__* wd ;
 int zm_assert (struct zsBssInfo*) ;
 int zmw_get_wlan_dev (int *) ;

void zfBssInfoInsertToList(zdev_t* dev, struct zsBssInfo* pBssInfo)
{
    zmw_get_wlan_dev(dev);

    zm_assert(pBssInfo);



    if ( wd->sta.bssList.bssCount == 0 )
    {
        wd->sta.bssList.head = pBssInfo;
        wd->sta.bssList.tail = pBssInfo;
    }
    else
    {
        wd->sta.bssList.tail->next = pBssInfo;
        wd->sta.bssList.tail = pBssInfo;
    }

    pBssInfo->next = ((void*)0);
    wd->sta.bssList.bssCount++;


}
