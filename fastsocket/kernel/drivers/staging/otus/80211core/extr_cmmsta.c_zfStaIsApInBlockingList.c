
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef size_t u16_t ;
struct TYPE_5__ {TYPE_1__* blockingApList; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;
struct TYPE_4__ {scalar_t__ weight; scalar_t__* addr; } ;


 size_t FALSE ;
 size_t TRUE ;
 size_t ZM_MAX_BLOCKING_AP_LIST_SIZE ;
 TYPE_3__* wd ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfStaIsApInBlockingList(zdev_t* dev, u8_t* bssid)
{
    u16_t i, j;
    zmw_get_wlan_dev(dev);



    for (i=0; i<ZM_MAX_BLOCKING_AP_LIST_SIZE; i++)
    {
        if (wd->sta.blockingApList[i].weight != 0)
        {
            for (j=0; j<6; j++)
            {
                if (wd->sta.blockingApList[i].addr[j] != bssid[j])
                {
                    break;
                }
            }
            if (j == 6)
            {

                return TRUE;
            }
        }
    }

    return FALSE;
}
