
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
struct zsBssInfo {scalar_t__ sortValue; struct zsBssInfo* next; } ;
struct TYPE_4__ {int bssCount; struct zsBssInfo* head; struct zsBssInfo* tail; } ;
struct TYPE_5__ {TYPE_1__ bssList; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;


 TYPE_3__* wd ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfBssInfoReorderList(zdev_t* dev)
{
    struct zsBssInfo* pBssInfo = ((void*)0);
    struct zsBssInfo* pInsBssInfo = ((void*)0);
    struct zsBssInfo* pNextBssInfo = ((void*)0);
    struct zsBssInfo* pPreBssInfo = ((void*)0);
    u8_t i = 0;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);

    if (wd->sta.bssList.bssCount > 1)
    {
        pInsBssInfo = wd->sta.bssList.head;
        wd->sta.bssList.tail = pInsBssInfo;
        pBssInfo = pInsBssInfo->next;
        pInsBssInfo->next = ((void*)0);
        while (pBssInfo != ((void*)0))
        {
            i = 0;
            while (1)
            {

                if( pBssInfo->sortValue >= pInsBssInfo->sortValue)
                {
                    if (i==0)
                    {

                        wd->sta.bssList.head = pBssInfo;
                        pNextBssInfo = pBssInfo->next;
                        pBssInfo->next = pInsBssInfo;
                        break;
                    }
                    else
                    {

                        pPreBssInfo->next = pBssInfo;
                        pNextBssInfo = pBssInfo->next;
                        pBssInfo->next = pInsBssInfo;
                        break;
                    }
                }
                else
                {
                    if (pInsBssInfo->next != ((void*)0))
                    {

                        pPreBssInfo = pInsBssInfo;
                        pInsBssInfo = pInsBssInfo->next;
                    }
                    else
                    {

                        pInsBssInfo->next = pBssInfo;
                        pNextBssInfo = pBssInfo->next;
                        wd->sta.bssList.tail = pBssInfo;
                        pBssInfo->next = ((void*)0);
                        break;
                    }
                }
                i++;
            }
            pBssInfo = pNextBssInfo;
            pInsBssInfo = wd->sta.bssList.head;
        }
    }

    zmw_leave_critical_section(dev);
}
