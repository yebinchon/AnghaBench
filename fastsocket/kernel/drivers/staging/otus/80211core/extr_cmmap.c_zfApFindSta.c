
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u16_t ;
struct TYPE_5__ {TYPE_1__* staTable; } ;
struct TYPE_6__ {TYPE_2__ ap; } ;
struct TYPE_4__ {int valid; size_t* addr; } ;


 size_t ZM_MAX_STA_SUPPORT ;
 TYPE_3__* wd ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfApFindSta(zdev_t* dev, u16_t* addr)
{
    u16_t i;

    zmw_get_wlan_dev(dev);

    for (i=0; i<ZM_MAX_STA_SUPPORT; i++)
    {
        if (wd->ap.staTable[i].valid == 1)
        {
            if ((wd->ap.staTable[i].addr[0] == addr[0])
                    && (wd->ap.staTable[i].addr[1] == addr[1])
                    && (wd->ap.staTable[i].addr[2] == addr[2]))
            {
                return i;
            }
        }
    }
    return 0xffff;
}
