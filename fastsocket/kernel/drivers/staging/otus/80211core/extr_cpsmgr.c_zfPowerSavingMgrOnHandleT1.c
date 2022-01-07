
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_4__ {int state; scalar_t__ sleepAllowedtick; } ;
struct TYPE_5__ {scalar_t__ powerSaveMode; int ReceivedPktRatePerSecond; TYPE_1__ psMgr; } ;
struct TYPE_6__ {scalar_t__ wlanMode; TYPE_2__ sta; } ;


 scalar_t__ FALSE ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 int ZM_PS_MSG_STATE_T2 ;
 scalar_t__ ZM_STA_PS_LIGHT ;
 TYPE_3__* wd ;
 scalar_t__ zfHpGetFreeTxdCount (int *) ;
 scalar_t__ zfHpGetMaxTxdCount (int *) ;
 scalar_t__ zfIsVtxqEmpty (int *) ;
 int zfPowerSavingMgrNotifyPSToAP (int *) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zm_debug_msg0 (char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

__attribute__((used)) static void zfPowerSavingMgrOnHandleT1(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();


    if ( zfIsVtxqEmpty(dev) == FALSE )
    {
        return;
    }

zm_debug_msg0("VtxQ is empty now...Check if HAL TXQ is empty\n");


    if ( zfHpGetFreeTxdCount(dev) != zfHpGetMaxTxdCount(dev) )
    {
        return;
    }

zm_debug_msg0("HAL TXQ is empty now...Could go to sleep...\n");

    zmw_enter_critical_section(dev);

    if (wd->sta.powerSaveMode == ZM_STA_PS_LIGHT)
    {
        if (wd->sta.ReceivedPktRatePerSecond > 200)
        {
            zmw_leave_critical_section(dev);
            return;
        }

        if ( zfStaIsConnected(dev)
             && (wd->wlanMode == ZM_MODE_INFRASTRUCTURE) )
        {
            if (wd->sta.psMgr.sleepAllowedtick) {
                wd->sta.psMgr.sleepAllowedtick--;
                zmw_leave_critical_section(dev);
                return;
            }
        }
    }

    wd->sta.psMgr.state = ZM_PS_MSG_STATE_T2;

    zmw_leave_critical_section(dev);


    if ( zfStaIsConnected(dev) )
    {
zm_debug_msg0("zfPowerSavingMgrOnHandleT1 send Null data\n");
        zfPowerSavingMgrNotifyPSToAP(dev);
    }



}
