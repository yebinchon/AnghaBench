
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_4__ {void* currScanType; scalar_t__* scanReqs; } ;
struct TYPE_5__ {TYPE_1__ scanMgr; scalar_t__ scanFrequency; void* bChannelScan; void* bScheduleScan; } ;
struct TYPE_6__ {int (* zfcbScanNotify ) (int *,int *) ;TYPE_2__ sta; } ;


 void* FALSE ;
 int ZM_EVENT_IN_SCAN ;
 int ZM_EVENT_SCAN ;
 int ZM_EVENT_TIMEOUT_SCAN ;


 void* ZM_SCAN_MGR_SCAN_NONE ;
 int stub1 (int *,int *) ;
 TYPE_3__* wd ;
 int zfPowerSavingMgrIsSleeping (int *) ;
 int zfSendNullData (int *,int ) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zfTimerCancel (int *,int ) ;
 int zfTimerSchedule (int *,int ,int) ;
 int zm_assert (int) ;
 int zm_debug_msg0 (char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfScanMgrScanStop(zdev_t* dev, u8_t scanType)
{
    u8_t scanNotifyRequired = 0;
    u8_t theOtherScan = ZM_SCAN_MGR_SCAN_NONE;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);

    if ( wd->sta.scanMgr.currScanType == ZM_SCAN_MGR_SCAN_NONE )
    {
        zm_assert(wd->sta.scanMgr.scanReqs[0] == 0);
        zm_assert(wd->sta.scanMgr.scanReqs[1] == 0);
        goto done;
    }

    switch(scanType)
    {
        case 129:
            scanNotifyRequired = 1;
            theOtherScan = 128;
            break;

        case 128:
            theOtherScan = 129;
            break;

        default:
            goto done;
    }

    if ( wd->sta.scanMgr.currScanType != scanType )
    {
        goto stop_done;
    }

    zfTimerCancel(dev, ZM_EVENT_SCAN);



    wd->sta.bScheduleScan = FALSE;

    zfTimerCancel(dev, ZM_EVENT_TIMEOUT_SCAN);
    zfTimerCancel(dev, ZM_EVENT_IN_SCAN);

    wd->sta.bChannelScan = FALSE;
    wd->sta.scanFrequency = 0;

    if ( wd->sta.scanMgr.scanReqs[theOtherScan - 1] )
    {
        wd->sta.scanMgr.currScanType = theOtherScan;


        zfTimerSchedule(dev, ZM_EVENT_SCAN, 100);
    }
    else
    {
        wd->sta.scanMgr.currScanType = ZM_SCAN_MGR_SCAN_NONE;
    }

stop_done:
    wd->sta.scanMgr.scanReqs[scanType - 1] = 0;

    zmw_leave_critical_section(dev);


    if ((zfStaIsConnected(dev)) && (!zfPowerSavingMgrIsSleeping(dev)))
    {
        zfSendNullData(dev, 0);
    }

    if ( scanNotifyRequired )
    {
        zm_debug_msg0("Scan notify after reset");
        if (wd->zfcbScanNotify != ((void*)0))
        {
            wd->zfcbScanNotify(dev, ((void*)0));
        }
    }

    return;

done:
    zmw_leave_critical_section(dev);
    return;
}
