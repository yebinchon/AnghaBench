
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_4__ {int state; } ;
struct TYPE_5__ {TYPE_1__ psMgr; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;






 TYPE_3__* wd ;
 int zfPowerSavingMgrOnHandleT1 (int *) ;
 int zfPowerSavingMgrOnHandleT2 (int *) ;
 int zfPowerSavingMgrSleepIfIdle (int *) ;
 int zfPowerSavingMgrWakeup (int *) ;
 int zmw_get_wlan_dev (int *) ;

__attribute__((used)) static void zfPowerSavingMgrDisconnectMain(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);
    zfPowerSavingMgrWakeup(dev);

}
