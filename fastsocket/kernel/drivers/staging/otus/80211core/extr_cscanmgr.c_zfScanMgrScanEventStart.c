
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_4__ {scalar_t__ currScanType; } ;
struct TYPE_5__ {int ibssSiteSurveyStatus; int scanFrequency; int bPassiveScan; int bScheduleScan; scalar_t__ bChannelScan; TYPE_1__ scanMgr; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;


 int FALSE ;
 scalar_t__ TRUE ;
 int ZM_EVENT_IN_SCAN ;
 int ZM_EVENT_TIMEOUT_SCAN ;
 scalar_t__ ZM_SCAN_MGR_SCAN_NONE ;
 TYPE_3__* wd ;
 int zfBssInfoRefresh (int *,int ) ;
 int zfChGetFirstChannel (int *,int *) ;
 int zfCoreSetFrequencyV2 (int *,int ,int ) ;
 int zfHpBeginSiteSurvey (int *,int) ;
 int zfPowerSavingMgrWakeup (int *) ;
 int zfScanMgrEventSetFreqCompleteCb ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zfTimerCancel (int *,int ) ;
 int zm_debug_msg0 (char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfScanMgrScanEventStart(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    if ( wd->sta.bChannelScan )
    {
        return;
    }

    zfPowerSavingMgrWakeup(dev);

    zmw_enter_critical_section(dev);

    if ( wd->sta.scanMgr.currScanType == ZM_SCAN_MGR_SCAN_NONE )
    {
        goto no_scan;
    }


    zfBssInfoRefresh(dev, 0);
    wd->sta.bChannelScan = TRUE;
    wd->sta.bScheduleScan = FALSE;
    zfTimerCancel(dev, ZM_EVENT_IN_SCAN);
    zfTimerCancel(dev, ZM_EVENT_TIMEOUT_SCAN);


    wd->sta.scanFrequency = zfChGetFirstChannel(dev, &wd->sta.bPassiveScan);
    zmw_leave_critical_section(dev);
    if (zfStaIsConnected(dev))
    {
        zfHpBeginSiteSurvey(dev, 1);
        zmw_enter_critical_section(dev);
        wd->sta.ibssSiteSurveyStatus = 1;
        zmw_leave_critical_section(dev);
    }
    else
    {
        zfHpBeginSiteSurvey(dev, 0);
        zmw_enter_critical_section(dev);
        wd->sta.ibssSiteSurveyStatus = 0;
        zmw_leave_critical_section(dev);
    }


    zm_debug_msg0("scan 0");
    zfCoreSetFrequencyV2(dev, wd->sta.scanFrequency, zfScanMgrEventSetFreqCompleteCb);

    return;

no_scan:
    zmw_leave_critical_section(dev);
    return;
}
