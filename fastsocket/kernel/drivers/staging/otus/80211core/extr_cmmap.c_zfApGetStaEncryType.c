
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
struct TYPE_5__ {TYPE_1__* staTable; } ;
struct TYPE_6__ {TYPE_2__ ap; } ;
struct TYPE_4__ {int encryMode; } ;


 int ZM_LV_3 ;
 int ZM_NO_WEP ;
 TYPE_3__* wd ;
 int zfApFindSta (int *,int*) ;
 int zm_msg2_mm (int ,char*,int ) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfApGetStaEncryType(zdev_t* dev, u16_t* addr, u8_t* encryType)
{

    u16_t id;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);

    if ((id = zfApFindSta(dev, addr)) != 0xffff)
    {
        *encryType = wd->ap.staTable[id].encryMode;
    }
    else
    {
        *encryType = ZM_NO_WEP;
    }

    zmw_leave_critical_section(dev);

    zm_msg2_mm(ZM_LV_3, "encyrType=", *encryType);
    return;
}
