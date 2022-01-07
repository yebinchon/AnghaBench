
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct zsBssList {int bssCount; struct zsBssInfo* head; } ;
struct zsBssInfo {struct zsBssInfo* next; } ;
struct TYPE_4__ {int bssCount; struct zsBssInfo* head; } ;
struct TYPE_5__ {TYPE_1__ bssList; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;


 TYPE_3__* wd ;
 int zfMemoryCopy (int*,int*,int) ;
 int zfScanMgrScanAck (int *) ;
 int zm_assert (int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfiWlanQueryBssList(zdev_t* dev, struct zsBssList* pBssList)
{
    struct zsBssInfo* pBssInfo;
    struct zsBssInfo* pDstBssInfo;
    u8_t i;
    u8_t* pMemList;
    u8_t* pMemInfo;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    pMemList = (u8_t*) pBssList;
    pMemInfo = pMemList + sizeof(struct zsBssList);
    pBssList->head = (struct zsBssInfo*) pMemInfo;

    zmw_enter_critical_section(dev);

    pBssInfo = wd->sta.bssList.head;
    pDstBssInfo = (struct zsBssInfo*) pMemInfo;
    pBssList->bssCount = wd->sta.bssList.bssCount;

    for( i=0; i<wd->sta.bssList.bssCount; i++ )
    {
        zfMemoryCopy((u8_t*)pDstBssInfo, (u8_t*)pBssInfo,
                sizeof(struct zsBssInfo));

        if ( pBssInfo->next != ((void*)0) )
        {
            pBssInfo = pBssInfo->next;
            pDstBssInfo->next = pDstBssInfo + 1;
            pDstBssInfo++;
        }
        else
        {
            zm_assert(i==(wd->sta.bssList.bssCount-1));
        }
    }

    zmw_leave_critical_section(dev);

    zfScanMgrScanAck(dev);
}
