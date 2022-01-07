
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
struct TYPE_4__ {int* scanReqs; scalar_t__ currScanType; int scanStartDelay; } ;
struct TYPE_5__ {TYPE_1__ scanMgr; void* bScheduleScan; void* bChannelScan; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;


 void* FALSE ;
 void* TRUE ;
 int ZM_EVENT_IN_SCAN ;
 int ZM_EVENT_SCAN ;
 int ZM_EVENT_TIMEOUT_SCAN ;
 scalar_t__ ZM_SCAN_MGR_SCAN_EXTERNAL ;
 scalar_t__ ZM_SCAN_MGR_SCAN_INTERNAL ;
 scalar_t__ ZM_SCAN_MGR_SCAN_NONE ;
 TYPE_3__* wd ;
 int zfPowerSavingMgrIsSleeping (int *) ;
 int zfSendNullData (int *,int) ;
 scalar_t__ zfStaIsConnected (int *) ;
 scalar_t__ zfStaIsConnecting (int *) ;
 int zfTimerCancel (int *,int ) ;
 int zfTimerSchedule (int *,int ,int) ;
 int zm_debug_msg0 (char*) ;
 int zm_debug_msg1 (char*,scalar_t__) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u8_t zfScanMgrScanStart(zdev_t* dev, u8_t scanType)
{
    u8_t i;

    zmw_get_wlan_dev(dev);

    zm_debug_msg1("scanType = ", scanType);

    zmw_declare_for_critical_section();

    if ( scanType != ZM_SCAN_MGR_SCAN_INTERNAL &&
         scanType != ZM_SCAN_MGR_SCAN_EXTERNAL )
    {
        zm_debug_msg0("unknown scanType");
        return 1;
    }
    else if (zfStaIsConnecting(dev))
    {
        zm_debug_msg0("reject scan request due to connecting");
        return 1;
    }

    i = scanType - 1;

    zmw_enter_critical_section(dev);

    if ( wd->sta.scanMgr.scanReqs[i] == 1 )
    {
        zm_debug_msg1("scan rescheduled", scanType);
        goto scan_done;
    }

    wd->sta.scanMgr.scanReqs[i] = 1;
    zm_debug_msg1("scan scheduled: ", scanType);




    if ( wd->sta.scanMgr.currScanType == ZM_SCAN_MGR_SCAN_NONE )
    {
        goto schedule_scan;
    }
    else if ( wd->sta.scanMgr.currScanType == ZM_SCAN_MGR_SCAN_INTERNAL &&
              scanType == ZM_SCAN_MGR_SCAN_EXTERNAL )
    {

        zfTimerCancel(dev, ZM_EVENT_SCAN);



        wd->sta.bScheduleScan = FALSE;

        zfTimerCancel(dev, ZM_EVENT_TIMEOUT_SCAN);
        zfTimerCancel(dev, ZM_EVENT_IN_SCAN);

        wd->sta.bChannelScan = FALSE;
        goto schedule_scan;
    }
    else
    {
        zm_debug_msg0("Scan is busy...waiting later to start\n");
    }

    zmw_leave_critical_section(dev);
    return 0;

scan_done:
    zmw_leave_critical_section(dev);
    return 1;

schedule_scan:

    wd->sta.bScheduleScan = TRUE;

    zfTimerSchedule(dev, ZM_EVENT_SCAN, wd->sta.scanMgr.scanStartDelay);
    wd->sta.scanMgr.scanStartDelay = 3;

    wd->sta.scanMgr.currScanType = scanType;
    zmw_leave_critical_section(dev);

    if ((zfStaIsConnected(dev)) && (!zfPowerSavingMgrIsSleeping(dev)))
    {
        zfSendNullData(dev, 1);
    }
    return 0;
}
