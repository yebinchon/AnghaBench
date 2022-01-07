
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
struct TYPE_4__ {int encryMode; scalar_t__ vap; scalar_t__ time; scalar_t__* addr; scalar_t__ state; scalar_t__ valid; } ;


 size_t ZM_MAX_STA_SUPPORT ;
 int ZM_NO_WEP ;
 TYPE_3__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfApInitStaTbl(zdev_t* dev)
{
    u16_t i;

    zmw_get_wlan_dev(dev);

    for (i=0; i<ZM_MAX_STA_SUPPORT; i++)
    {
        wd->ap.staTable[i].valid = 0;
        wd->ap.staTable[i].state = 0;
        wd->ap.staTable[i].addr[0] = 0;
        wd->ap.staTable[i].addr[1] = 0;
        wd->ap.staTable[i].addr[2] = 0;
        wd->ap.staTable[i].time = 0;
        wd->ap.staTable[i].vap = 0;
        wd->ap.staTable[i].encryMode = ZM_NO_WEP;
    }
    return;
}
