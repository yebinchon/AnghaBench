
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u16_t ;
struct TYPE_4__ {int LEDCtrlFlagFromReg; int LEDCtrlFlag; } ;
struct TYPE_5__ {scalar_t__ scanFrequency; } ;
struct TYPE_6__ {scalar_t__ wlanMode; TYPE_1__ ledStruct; TYPE_2__ sta; int heartBeatNotification; } ;


 int ZM_BSSID_LIST_SCAN ;
 int ZM_LED_CTRL_FLAG_ALPHA ;
 scalar_t__ ZM_MODE_AP ;
 int ZM_SCAN_MGR_SCAN_EXTERNAL ;
 TYPE_3__* wd ;
 int zfScanMgrScanStart (int *,int ) ;
 int zfStaBlockWlanScan (int *) ;
 int zm_debug_msg0 (char*) ;
 int zm_debug_msg1 (char*,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfiWlanScan(zdev_t *dev)
{
 u16_t ret = 1;
 zmw_get_wlan_dev(dev);

 zm_debug_msg0("");

 zmw_declare_for_critical_section();

 zmw_enter_critical_section(dev);

 if (wd->wlanMode == ZM_MODE_AP) {
  wd->heartBeatNotification |= ZM_BSSID_LIST_SCAN;
  wd->sta.scanFrequency = 0;

  ret = 0;
 } else {
  goto start_scan;

 }

 zmw_leave_critical_section(dev);

 return ret;

start_scan:
 zmw_leave_critical_section(dev);

 if (wd->ledStruct.LEDCtrlFlagFromReg & ZM_LED_CTRL_FLAG_ALPHA) {

  wd->ledStruct.LEDCtrlFlag |= ZM_LED_CTRL_FLAG_ALPHA;
 }

 ret = zfScanMgrScanStart(dev, ZM_SCAN_MGR_SCAN_EXTERNAL);

 zm_debug_msg1("ret = ", ret);

 return ret;
}
