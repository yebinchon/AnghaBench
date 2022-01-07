
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_4__ {scalar_t__ isSleepAllowed; scalar_t__ sleepAllowedtick; } ;
struct TYPE_5__ {scalar_t__ powerSaveMode; int ReceivedPktRatePerSecond; TYPE_1__ psMgr; scalar_t__ bChannelScan; } ;
struct TYPE_6__ {scalar_t__ wlanMode; TYPE_2__ sta; } ;


 scalar_t__ FALSE ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 scalar_t__ ZM_STA_PS_LIGHT ;
 TYPE_3__* wd ;
 scalar_t__ zfIsVtxqEmpty (int *) ;
 scalar_t__ zfStaIsConnected (int *) ;
 scalar_t__ zfStaIsConnecting (int *) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

__attribute__((used)) static u8_t zfPowerSavingMgrIsIdle(zdev_t *dev)
{
    u8_t isIdle = 0;

    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);

    if ( zfStaIsConnected(dev) && wd->sta.psMgr.isSleepAllowed == 0 )
    {
        goto done;
    }

    if ( wd->sta.bChannelScan )
    {
        goto done;
    }

    if ( zfStaIsConnecting(dev) )
    {
        goto done;
    }

    if (wd->sta.powerSaveMode == ZM_STA_PS_LIGHT)
    {
        if (wd->sta.ReceivedPktRatePerSecond > 200)
        {
            goto done;
        }

        if ( zfStaIsConnected(dev)
             && (wd->wlanMode == ZM_MODE_INFRASTRUCTURE) )
        {
            if (wd->sta.psMgr.sleepAllowedtick) {
                wd->sta.psMgr.sleepAllowedtick--;
                goto done;
            }
        }
    }

    isIdle = 1;

done:
    zmw_leave_critical_section(dev);

    if ( zfIsVtxqEmpty(dev) == FALSE )
    {
        isIdle = 0;
    }

    return isIdle;
}
