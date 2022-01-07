
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {int activescanTickPerChannel; int passiveScanTickPerChannel; scalar_t__ bPassiveScan; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 int ZM_EVENT_IN_SCAN ;
 int ZM_EVENT_TIMEOUT_SCAN ;
 int ZM_TICK_IN_SCAN ;
 TYPE_2__* wd ;
 int zfScanSendProbeRequest (int *) ;
 int zfTimerSchedule (int *,int ,int ) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

__attribute__((used)) static void zfScanMgrEventSetFreqCompleteCb(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();



    zmw_enter_critical_section(dev);
    zfTimerSchedule(dev, ZM_EVENT_IN_SCAN, ZM_TICK_IN_SCAN);
    if (wd->sta.bPassiveScan)
    {
        zfTimerSchedule(dev, ZM_EVENT_TIMEOUT_SCAN, wd->sta.passiveScanTickPerChannel);
    }
    else
    {
        zfTimerSchedule(dev, ZM_EVENT_TIMEOUT_SCAN, wd->sta.activescanTickPerChannel);
    }
    zmw_leave_critical_section(dev);

    zfScanSendProbeRequest(dev);
}
