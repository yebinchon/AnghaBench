
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
struct TYPE_4__ {int maxSleepPeriods; int state; scalar_t__ tempWakeUp; } ;
struct TYPE_5__ {int powerSaveMode; TYPE_1__ psMgr; } ;
struct TYPE_6__ {scalar_t__ wlanMode; int beaconInterval; TYPE_2__ sta; } ;


 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 int ZM_PS_MAX_SLEEP_PERIODS ;


 int ZM_PS_MSG_STATE_T1 ;




 TYPE_3__* wd ;
 int zfHpPowerSaveSetMode (int *,int ,int,int ) ;
 int zfHpPowerSaveSetState (int *,int ) ;
 int zfPowerSavingMgrHandlePs (int *) ;
 int zfPowerSavingMgrHandlePsNone (int *,int*) ;
 int zfSendNullData (int *,int ) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zm_debug_msg0 (char*) ;
 int zm_debug_msg1 (char*,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfPowerSavingMgrSetMode(zdev_t* dev, u8_t mode)
{
    u16_t sendNull = 0;
    u8_t isWakeUpRequired = 0;

    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    zm_debug_msg1("mode = ", mode);

    if (mode > 130)
    {
        zm_debug_msg0("return - wrong power save mode");
        return;
    }

    zmw_enter_critical_section(dev);


    switch(mode)
    {
        case 128:
            sendNull = zfPowerSavingMgrHandlePsNone(dev, &isWakeUpRequired);
            break;

        case 131:
        case 130:
            wd->sta.psMgr.maxSleepPeriods = 1;
            zfPowerSavingMgrHandlePs(dev);
            break;

        case 129:
            wd->sta.psMgr.maxSleepPeriods = ZM_PS_MAX_SLEEP_PERIODS;
            zfPowerSavingMgrHandlePs(dev);
            break;
    }
    wd->sta.powerSaveMode = mode;
    zmw_leave_critical_section(dev);

    if ( isWakeUpRequired )
    {
        zfHpPowerSaveSetState(dev, 0);
        wd->sta.psMgr.tempWakeUp = 0;
    }

    if ( zfStaIsConnected(dev)
         && (wd->wlanMode == ZM_MODE_INFRASTRUCTURE) )
    {
        switch(mode)
        {
            case 128:
                zfHpPowerSaveSetMode(dev, 0, 0, wd->beaconInterval);
                break;

            case 131:
            case 129:
            case 130:
                zfHpPowerSaveSetMode(dev, 0, 1, wd->beaconInterval);
                break;

            default:
                zfHpPowerSaveSetMode(dev, 0, 0, wd->beaconInterval);
                break;
        }
    }

    if (sendNull == 1)
    {
        zfSendNullData(dev, 0);
    }

    return;
}
