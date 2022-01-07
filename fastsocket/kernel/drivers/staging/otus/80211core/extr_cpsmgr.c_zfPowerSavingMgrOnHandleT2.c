
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_6__ {scalar_t__ tempWakeUp; int lastTxMulticastFrm; int lastTxBroadcastFrm; int lastTxUnicastFrm; int state; } ;
struct TYPE_7__ {TYPE_2__ psMgr; } ;
struct TYPE_5__ {int txMulticastFrm; int txBroadcastFrm; int txUnicastFrm; } ;
struct TYPE_8__ {TYPE_3__ sta; TYPE_1__ commTally; } ;


 int ZM_PS_MSG_STATE_SLEEP ;
 TYPE_4__* wd ;
 scalar_t__ zfHpGetFreeTxdCount (int *) ;
 scalar_t__ zfHpGetMaxTxdCount (int *) ;
 int zfHpPowerSaveSetState (int *,int) ;
 int zm_debug_msg0 (char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

__attribute__((used)) static void zfPowerSavingMgrOnHandleT2(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();


    if ( zfHpGetFreeTxdCount(dev) != zfHpGetMaxTxdCount(dev) )
    {
        return;
    }

    zmw_enter_critical_section(dev);
    wd->sta.psMgr.state = ZM_PS_MSG_STATE_SLEEP;
    wd->sta.psMgr.lastTxUnicastFrm = wd->commTally.txUnicastFrm;
    wd->sta.psMgr.lastTxBroadcastFrm = wd->commTally.txBroadcastFrm;
    wd->sta.psMgr.lastTxMulticastFrm = wd->commTally.txMulticastFrm;
    zmw_leave_critical_section(dev);


zm_debug_msg0("zfPowerSavingMgrOnHandleT2 zzzz....\n");
    zfHpPowerSaveSetState(dev, 1);
    wd->sta.psMgr.tempWakeUp = 0;
}
