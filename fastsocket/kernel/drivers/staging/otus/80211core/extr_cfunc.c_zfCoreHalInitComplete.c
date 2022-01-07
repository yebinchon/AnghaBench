
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_2__ {int halState; } ;


 int ZM_HAL_STATE_RUNNING ;
 TYPE_1__* wd ;
 int zfPushVtxq (int *) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfCoreHalInitComplete(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);
    wd->halState = ZM_HAL_STATE_RUNNING;
    zmw_leave_critical_section(dev);

    zfPushVtxq(dev);
}
