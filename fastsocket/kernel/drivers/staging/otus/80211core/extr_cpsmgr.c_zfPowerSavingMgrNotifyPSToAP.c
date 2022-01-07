
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_7__ {scalar_t__ txUnicastFrm; scalar_t__ txBroadcastFrm; scalar_t__ txMulticastFrm; } ;
struct TYPE_5__ {int tempWakeUp; scalar_t__ lastTxUnicastFrm; scalar_t__ lastTxBroadcastFrm; scalar_t__ lastTxMulticastFrm; } ;
struct TYPE_6__ {TYPE_1__ psMgr; } ;
struct TYPE_8__ {TYPE_3__ commTally; TYPE_2__ sta; } ;


 TYPE_4__* wd ;
 int zfSendNullData (int *,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

__attribute__((used)) static void zfPowerSavingMgrNotifyPSToAP(zdev_t *dev)
{
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    if ( (wd->sta.psMgr.tempWakeUp != 1)&&
         (wd->sta.psMgr.lastTxUnicastFrm != wd->commTally.txUnicastFrm ||
          wd->sta.psMgr.lastTxBroadcastFrm != wd->commTally.txBroadcastFrm ||
          wd->sta.psMgr.lastTxMulticastFrm != wd->commTally.txMulticastFrm) )
    {
        zmw_enter_critical_section(dev);
        wd->sta.psMgr.lastTxUnicastFrm = wd->commTally.txUnicastFrm;
        wd->sta.psMgr.lastTxBroadcastFrm = wd->commTally.txBroadcastFrm;
        wd->sta.psMgr.lastTxMulticastFrm = wd->commTally.txMulticastFrm;
        zmw_leave_critical_section(dev);

        zfSendNullData(dev, 1);
    }
}
