
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_2__ {scalar_t__ wlanMode; int tick; int swSniffer; } ;


 scalar_t__ ZM_MODE_AP ;
 TYPE_1__* wd ;
 int zfAggScanAndClear (int *,int) ;
 int zfPowerSavingMgrMain (int *) ;
 int zfStaCheckConnectTimeout (int *) ;
 int zfStaCheckRxBeacon (int *) ;
 int zfStaTimer100ms (int *) ;
 int zfTimerCheckAndHandle (int *) ;
 int zmw_get_wlan_dev (int *) ;

void zfMmStaTimeTick(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);


    if (wd->wlanMode != ZM_MODE_AP && !wd->swSniffer)
    {
        if ( wd->tick & 1 )
        {
            zfTimerCheckAndHandle(dev);
        }

        zfStaCheckRxBeacon(dev);
        zfStaTimer100ms(dev);
        zfStaCheckConnectTimeout(dev);
        zfPowerSavingMgrMain(dev);
    }







}
