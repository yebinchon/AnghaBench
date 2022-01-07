
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_5__ {TYPE_1__ psMgr; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ ZM_PS_MSG_STATE_SLEEP ;
 scalar_t__ ZM_PS_MSG_STATE_T2 ;
 TYPE_3__* wd ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u8_t zfPowerSavingMgrIsSleeping(zdev_t *dev)
{
    u8_t isSleeping = FALSE;
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);
    if ( wd->sta.psMgr.state == ZM_PS_MSG_STATE_SLEEP ||
         wd->sta.psMgr.state == ZM_PS_MSG_STATE_T2)
    {
        isSleeping = TRUE;
    }
    zmw_leave_critical_section(dev);
    return isSleeping;
}
