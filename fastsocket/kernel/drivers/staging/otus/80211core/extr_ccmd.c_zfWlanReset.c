
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef int u16_t ;
struct zsOppositeInfo {int dummy; } ;
struct TYPE_3__ {scalar_t__ currentAuthMode; scalar_t__ rifsState; scalar_t__ SWEncryptEnable; scalar_t__ oppositeInfo; scalar_t__ bSafeMode; scalar_t__ osRxFilter; scalar_t__ rifsCount; scalar_t__ rifsLikeFrameCnt; scalar_t__ leapEnabled; scalar_t__ connectTimeoutCount; scalar_t__ ibssWpa2Psk; scalar_t__ ibssBssIsCreator; scalar_t__ cmMicFailureCount; int wpaState; int wepStatus; int encryMode; scalar_t__ InternalScanReq; scalar_t__ bAutoReconnect; scalar_t__ cmDisallowSsidLength; int connectByReasso; int connectState; int bssid; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ sta; int (* zfcbConnectNotify ) (int *,int ,int ) ;} ;


 int FALSE ;
 scalar_t__ ZM_AUTH_MODE_WPA2 ;
 int ZM_ENCRYPTION_WEP_DISABLED ;
 int ZM_EVENT_CM_BLOCK_TIMER ;
 int ZM_EVENT_CM_DISCONNECT ;
 int ZM_EVENT_IBSS_MONITOR ;
 int ZM_MAX_OPPOSITE_COUNT ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 scalar_t__ ZM_MODE_PSEUDO ;
 int ZM_NO_WEP ;
 scalar_t__ ZM_RIFS_STATE_DETECTED ;
 scalar_t__ ZM_RIFS_STATE_DETECTING ;
 int ZM_SCAN_MGR_SCAN_EXTERNAL ;
 int ZM_SCAN_MGR_SCAN_INTERNAL ;
 int ZM_STATUS_MEDIA_CONNECTION_RESET ;
 int ZM_STATUS_MEDIA_RESET ;
 int ZM_STA_CONN_STATE_NONE ;
 int ZM_STA_STATE_DISCONNECT ;
 int ZM_STA_WPA_STATE_INIT ;
 int ZM_WLAN_FRAME_TYPE_DEAUTH ;
 int stub1 (int *,int ,int ) ;
 int stub2 (int *,int ,int ) ;
 TYPE_2__* wd ;
 int zfAggRxFreeBuf (int *,int ) ;
 int zfAgingDefragList (int *,int) ;
 int zfChangeAdapterState (int *,int ) ;
 int zfFlushVtxq (int *) ;
 int zfHpDisableBeacon (int *) ;
 int zfHpDisableRifs (int *) ;
 int zfHpResetKeyCache (int *) ;
 int zfScanMgrScanStop (int *,int ) ;
 int zfSendMmFrame (int *,int ,int ,int,int ,int ) ;
 int zfStaDisableSWEncryption (int *) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zfStaRefreshBlockList (int *,int) ;
 int zfTimerCancel (int *,int ) ;
 int zfZeroMemory (scalar_t__*,int) ;
 int zm_debug_msg0 (char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfWlanReset(zdev_t *dev)
{
 u8_t isConnected;
 zmw_get_wlan_dev(dev);

 zmw_declare_for_critical_section();

 zm_debug_msg0("zfWlanReset");

 isConnected = zfStaIsConnected(dev);


 {
  if ((wd->wlanMode == ZM_MODE_INFRASTRUCTURE) &&
  (wd->sta.currentAuthMode != ZM_AUTH_MODE_WPA2)) {

   if (isConnected) {

    zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_DEAUTH,
      wd->sta.bssid, 3, 0, 0);

   }
  }
 }

 zfChangeAdapterState(dev, ZM_STA_STATE_DISCONNECT);
 zfHpResetKeyCache(dev);

 if (isConnected) {

  if (wd->zfcbConnectNotify != ((void*)0))
   wd->zfcbConnectNotify(dev,
   ZM_STATUS_MEDIA_CONNECTION_RESET, wd->sta.bssid);
 } else {
  if (wd->zfcbConnectNotify != ((void*)0))
   wd->zfcbConnectNotify(dev, ZM_STATUS_MEDIA_RESET,
        wd->sta.bssid);
 }


 zfHpDisableBeacon(dev);


 zfAgingDefragList(dev, 1);


 zfFlushVtxq(dev);







 zfStaRefreshBlockList(dev, 1);

 zmw_enter_critical_section(dev);

 zfTimerCancel(dev, ZM_EVENT_IBSS_MONITOR);
 zfTimerCancel(dev, ZM_EVENT_CM_BLOCK_TIMER);
 zfTimerCancel(dev, ZM_EVENT_CM_DISCONNECT);

 wd->sta.connectState = ZM_STA_CONN_STATE_NONE;
 wd->sta.connectByReasso = FALSE;
 wd->sta.cmDisallowSsidLength = 0;
 wd->sta.bAutoReconnect = 0;
 wd->sta.InternalScanReq = 0;
 wd->sta.encryMode = ZM_NO_WEP;
 wd->sta.wepStatus = ZM_ENCRYPTION_WEP_DISABLED;
 wd->sta.wpaState = ZM_STA_WPA_STATE_INIT;
 wd->sta.cmMicFailureCount = 0;
 wd->sta.ibssBssIsCreator = 0;




 wd->sta.connectTimeoutCount = 0;


 wd->sta.leapEnabled = 0;


 if (wd->sta.rifsState == ZM_RIFS_STATE_DETECTED)
  zfHpDisableRifs(dev);
 wd->sta.rifsState = ZM_RIFS_STATE_DETECTING;
 wd->sta.rifsLikeFrameCnt = 0;
 wd->sta.rifsCount = 0;

 wd->sta.osRxFilter = 0;
 wd->sta.bSafeMode = 0;




 zfZeroMemory((u8_t *)wd->sta.oppositeInfo,
   sizeof(struct zsOppositeInfo) * ZM_MAX_OPPOSITE_COUNT);

 zmw_leave_critical_section(dev);

 zfScanMgrScanStop(dev, ZM_SCAN_MGR_SCAN_INTERNAL);
 zfScanMgrScanStop(dev, ZM_SCAN_MGR_SCAN_EXTERNAL);


 if (wd->sta.SWEncryptEnable != 0) {
  zm_debug_msg0("Disable software encryption");
  zfStaDisableSWEncryption(dev);
 }







 if (wd->wlanMode != ZM_MODE_PSEUDO)
  wd->wlanMode = ZM_MODE_INFRASTRUCTURE;

 return 0;
}
