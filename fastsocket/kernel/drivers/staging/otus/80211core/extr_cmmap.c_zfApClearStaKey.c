
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;
typedef int bcAddr ;
struct TYPE_4__ {TYPE_2__* staTable; } ;
struct TYPE_6__ {TYPE_1__ ap; } ;
struct TYPE_5__ {int encryMode; } ;


 scalar_t__ TRUE ;
 int ZM_LV_3 ;
 int ZM_NO_WEP ;
 TYPE_3__* wd ;
 int zfApFindSta (int *,int*) ;
 int zfHpRemoveKey (int *,int) ;
 scalar_t__ zfMemoryIsEqual (int *,int *,int) ;
 int zm_msg0_mm (int ,char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfApClearStaKey(zdev_t* dev, u16_t* addr)
{

    u16_t bcAddr[3] = { 0xffff, 0xffff, 0xffff };
    u16_t id;

    zmw_get_wlan_dev(dev);

    if (zfMemoryIsEqual((u8_t*)bcAddr, (u8_t*)addr, sizeof(bcAddr)) == TRUE)
    {


    }
    else
    {
        zmw_declare_for_critical_section();

        zmw_enter_critical_section(dev);

        if ((id = zfApFindSta(dev, addr)) != 0xffff)
        {

            zfHpRemoveKey(dev, id+1);


            wd->ap.staTable[id].encryMode = ZM_NO_WEP;
        }
        else
        {
            zm_msg0_mm(ZM_LV_3, "Can't find STA address\n");
        }
        zmw_leave_critical_section(dev);
    }
}
