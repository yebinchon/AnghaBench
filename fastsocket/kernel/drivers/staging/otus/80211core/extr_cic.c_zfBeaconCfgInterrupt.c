
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef scalar_t__ u32_t ;
struct TYPE_3__ {scalar_t__ beaconTxCnt; int txBeaconInd; scalar_t__ atimWindow; scalar_t__ ibssDelayedInd; int ibssDelayedIndEvent; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ sta; int (* zfcbIbssPartnerNotify ) (int *,int,int *) ;scalar_t__ tickIbssSendBeacon; } ;


 scalar_t__ ZM_MODE_IBSS ;
 int stub1 (int *,int,int *) ;
 TYPE_2__* wd ;
 int zfPowerSavingMgrAtimWinExpired (int *) ;
 int zfStaIbssPSSend (int *) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfBeaconCfgInterrupt(zdev_t* dev, u8_t* rsp)
{
    u32_t txBeaconCounter;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    if ( wd->wlanMode == ZM_MODE_IBSS )
    {
        txBeaconCounter = *((u32_t *)rsp);
        if ( wd->sta.beaconTxCnt != txBeaconCounter )
        {
            wd->sta.txBeaconInd = 1;

            zmw_enter_critical_section(dev);
            wd->tickIbssSendBeacon = 0;
            zmw_leave_critical_section(dev);
        }
        else
        {
            wd->sta.txBeaconInd = 0;
        }
        wd->sta.beaconTxCnt = txBeaconCounter;
    }
}
