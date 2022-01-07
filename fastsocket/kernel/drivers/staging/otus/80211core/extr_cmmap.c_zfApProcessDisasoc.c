
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_5__ {TYPE_1__* staTable; } ;
struct TYPE_6__ {int (* zfcbDisAsocNotify ) (int *,int *,int) ;TYPE_2__ ap; } ;
struct TYPE_4__ {scalar_t__ valid; } ;


 int stub1 (int *,int *,int) ;
 TYPE_3__* wd ;
 int zfApFindSta (int *,int*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfApProcessDisasoc(zdev_t* dev, zbuf_t* buf, u16_t* src, u16_t apId)
{
    u16_t aid;
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);

    if ((aid = zfApFindSta(dev, src)) != 0xffff)
    {

        wd->ap.staTable[aid].valid = 0;
        zmw_leave_critical_section(dev);
        if (wd->zfcbDisAsocNotify != ((void*)0))
        {
            wd->zfcbDisAsocNotify(dev, (u8_t*)src, apId);
        }
    }
    zmw_leave_critical_section(dev);

}
