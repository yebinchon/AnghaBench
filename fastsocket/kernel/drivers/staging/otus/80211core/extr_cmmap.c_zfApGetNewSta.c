
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
struct TYPE_4__ {scalar_t__ valid; } ;


 int ZM_LV_0 ;
 size_t ZM_MAX_STA_SUPPORT ;
 TYPE_3__* wd ;
 int zm_msg2_mm (int ,char*,size_t) ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfApGetNewSta(zdev_t* dev)
{
    u16_t i;

    zmw_get_wlan_dev(dev);

    for (i=0; i<ZM_MAX_STA_SUPPORT; i++)
    {
        if (wd->ap.staTable[i].valid == 0)
        {
            zm_msg2_mm(ZM_LV_0, "zfApGetNewSta=", i);
            return i;
        }
    }
    return 0xffff;
}
