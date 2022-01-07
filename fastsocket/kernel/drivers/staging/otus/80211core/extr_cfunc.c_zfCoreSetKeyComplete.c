
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {scalar_t__ flagKeyChanging; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 TYPE_2__* wd ;
 int zfPushVtxq (int *) ;
 int zm_debug_msg1 (char*,scalar_t__) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfCoreSetKeyComplete(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();




    if(wd->sta.flagKeyChanging)
    {
        zmw_enter_critical_section(dev);
        wd->sta.flagKeyChanging--;
        zmw_leave_critical_section(dev);
    }

    zm_debug_msg1("  zfCoreSetKeyComplete--- ", wd->sta.flagKeyChanging);

    zfPushVtxq(dev);
}
