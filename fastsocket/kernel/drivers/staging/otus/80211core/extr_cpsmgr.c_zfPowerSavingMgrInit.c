
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_4__ {int maxSleepPeriods; scalar_t__ sleepAllowedtick; scalar_t__ ticks; scalar_t__ isSleepAllowed; int state; } ;
struct TYPE_5__ {TYPE_1__ psMgr; int powerSaveMode; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;


 int ZM_PS_MSG_STATE_ACTIVE ;
 int ZM_STA_PS_NONE ;
 TYPE_3__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfPowerSavingMgrInit(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    wd->sta.powerSaveMode = ZM_STA_PS_NONE;
    wd->sta.psMgr.state = ZM_PS_MSG_STATE_ACTIVE;
    wd->sta.psMgr.isSleepAllowed = 0;
    wd->sta.psMgr.maxSleepPeriods = 1;
    wd->sta.psMgr.ticks = 0;
    wd->sta.psMgr.sleepAllowedtick = 0;
}
