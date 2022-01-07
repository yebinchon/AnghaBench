
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u8_t ;
struct zsBssInfo {int dummy; } ;
struct TYPE_4__ {int * tail; int * head; scalar_t__ bssCount; } ;
struct TYPE_5__ {size_t bssInfoFreeCount; int * bssInfoArray; scalar_t__ bssInfoArrayTail; scalar_t__ bssInfoArrayHead; TYPE_1__ bssList; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;


 size_t ZM_MAX_BSS ;
 TYPE_3__* wd ;
 int zfwMemAllocate (int *,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfBssInfoCreate(zdev_t* dev)
{
    u8_t i;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);

    wd->sta.bssList.bssCount = 0;
    wd->sta.bssList.head = ((void*)0);
    wd->sta.bssList.tail = ((void*)0);
    wd->sta.bssInfoArrayHead = 0;
    wd->sta.bssInfoArrayTail = 0;
    wd->sta.bssInfoFreeCount = ZM_MAX_BSS;

    for( i=0; i< ZM_MAX_BSS; i++ )
    {

        wd->sta.bssInfoArray[i] = zfwMemAllocate(dev, sizeof(struct zsBssInfo));

    }

    zmw_leave_critical_section(dev);
}
