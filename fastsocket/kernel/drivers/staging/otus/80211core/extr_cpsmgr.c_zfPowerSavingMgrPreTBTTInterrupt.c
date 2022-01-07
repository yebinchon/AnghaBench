
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_4__ {scalar_t__ ticks; scalar_t__ maxSleepPeriods; } ;
struct TYPE_5__ {TYPE_1__ psMgr; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;


 TYPE_3__* wd ;
 int zfHpPowerSaveSetMode (int *,int ,int ,int ) ;
 int zfPowerSavingMgrWakeup (int *) ;
 scalar_t__ zfStaIsDisconnect (int *) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfPowerSavingMgrPreTBTTInterrupt(zdev_t *dev)
{
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();


    if (zfStaIsDisconnect(dev)) {
        zfHpPowerSaveSetMode(dev, 0, 0, 0);
        zfPowerSavingMgrWakeup(dev);
        return;
    }

    zmw_enter_critical_section(dev);
    wd->sta.psMgr.ticks++;

    if ( wd->sta.psMgr.ticks < wd->sta.psMgr.maxSleepPeriods )
    {
        zmw_leave_critical_section(dev);
        return;
    }
    else
    {
        wd->sta.psMgr.ticks = 0;
    }

    zmw_leave_critical_section(dev);

    zfPowerSavingMgrWakeup(dev);
}
