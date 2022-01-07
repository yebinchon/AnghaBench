
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {scalar_t__ flagFreqChanging; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 int ZM_LV_1 ;
 TYPE_2__* wd ;
 int zfPushVtxq (int *) ;
 int zfRemoveFreqChangeReq (int *) ;
 int zm_msg1_scan (int ,char*,scalar_t__) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfCoreSetFrequencyComplete(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    zm_msg1_scan(ZM_LV_1, "flagFreqChanging=", wd->sta.flagFreqChanging);

    zmw_enter_critical_section(dev);

    if ( wd->sta.flagFreqChanging != 0 )
    {
        wd->sta.flagFreqChanging--;
    }

    zmw_leave_critical_section(dev);

    zfRemoveFreqChangeReq(dev);

    zfPushVtxq(dev);
    return;
}
