
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
struct TYPE_4__ {int state; } ;
struct TYPE_5__ {int powerSaveMode; TYPE_1__ psMgr; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;


 int ZM_PS_MSG_STATE_T1 ;




 TYPE_3__* wd ;
 scalar_t__ zfPowerSavingMgrIsIdle (int *) ;
 int zm_debug_msg0 (char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

__attribute__((used)) static void zfPowerSavingMgrSleepIfIdle(zdev_t *dev)
{
    u8_t isIdle;

    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    isIdle = zfPowerSavingMgrIsIdle(dev);

    if ( isIdle == 0 )
    {
        return;
    }

    zmw_enter_critical_section(dev);

    switch(wd->sta.powerSaveMode)
    {
        case 128:
            break;

        case 129:
        case 131:
        case 130:
            zm_debug_msg0("zfPowerSavingMgrSleepIfIdle: IDLE so slep now...\n");
            wd->sta.psMgr.state = ZM_PS_MSG_STATE_T1;
            break;
    }

    zmw_leave_critical_section(dev);
}
