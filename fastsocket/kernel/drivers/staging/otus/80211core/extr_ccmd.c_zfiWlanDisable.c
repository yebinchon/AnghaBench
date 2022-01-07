
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef size_t u16_t ;
struct zsOppositeInfo {int dummy; } ;
struct TYPE_7__ {scalar_t__ currentAuthMode; scalar_t__ rifsState; scalar_t__ SWEncryptEnable; scalar_t__ oppositeInfo; int bssid; scalar_t__ bSafeMode; scalar_t__ osRxFilter; scalar_t__ rifsCount; scalar_t__ rifsLikeFrameCnt; scalar_t__ leapEnabled; int connectState; scalar_t__ connectTimeoutCount; int wpaState; scalar_t__ ibssWpa2Psk; scalar_t__ ibssBssIsCreator; } ;
struct TYPE_6__ {int vapNumber; TYPE_1__* staTable; } ;
struct TYPE_8__ {scalar_t__ wlanMode; TYPE_3__ sta; TYPE_2__ ap; int (* zfcbConnectNotify ) (int *,int ,int ) ;int state; } ;
struct TYPE_5__ {int valid; int addr; } ;


 scalar_t__ ZM_AUTH_MODE_WPA2 ;
 int ZM_EVENT_IBSS_MONITOR ;
 int ZM_LV_1 ;
 int ZM_MAX_OPPOSITE_COUNT ;
 size_t ZM_MAX_STA_SUPPORT ;
 scalar_t__ ZM_MODE_AP ;
 scalar_t__ ZM_MODE_IBSS ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 scalar_t__ ZM_RIFS_STATE_DETECTED ;
 scalar_t__ ZM_RIFS_STATE_DETECTING ;
 int ZM_STATUS_MEDIA_CONNECTION_DISABLED ;
 int ZM_STATUS_MEDIA_DISABLED ;
 int ZM_STA_CONN_STATE_NONE ;
 int ZM_STA_STATE_DISCONNECT ;
 int ZM_STA_WPA_STATE_INIT ;
 int ZM_WLAN_FRAME_TYPE_DEAUTH ;
 int ZM_WLAN_STATE_DISABLED ;
 int stub1 (int *,int ,int ) ;
 int stub2 (int *,int ,int ) ;
 TYPE_4__* wd ;
 int zfAggRxFreeBuf (int *,int ) ;
 int zfAgingDefragList (int *,int) ;
 int zfApFlushBufferedPsFrame (int *) ;
 int zfChangeAdapterState (int *,int ) ;
 int zfFlushVtxq (int *) ;
 int zfHpDisableBeacon (int *) ;
 int zfHpDisableRifs (int *) ;
 int zfHpResetKeyCache (int *) ;
 int zfSendMmFrame (int *,int ,int ,int,int ,int ) ;
 int zfStaDisableSWEncryption (int *) ;
 int zfStaIbssMonitoring (int *,int) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zfTimerCancel (int *,int ) ;
 int zfZeroMemory (scalar_t__*,int) ;
 int zm_debug_msg0 (char*) ;
 int zm_msg0_mm (int ,char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfiWlanDisable(zdev_t *dev, u8_t ResetKeyCache)
{
 u16_t i;
 u8_t isConnected;

 zmw_get_wlan_dev(dev);




 wd->state = ZM_WLAN_STATE_DISABLED;

 zm_msg0_mm(ZM_LV_1, "Disable Wlan");

 if (wd->wlanMode != ZM_MODE_AP) {
  isConnected = zfStaIsConnected(dev);

  if ((wd->wlanMode == ZM_MODE_INFRASTRUCTURE) &&
   (wd->sta.currentAuthMode != ZM_AUTH_MODE_WPA2)) {

   if (isConnected) {

    zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_DEAUTH,
      wd->sta.bssid, 3, 0, 0);

   }
  }


  if (wd->wlanMode == ZM_MODE_IBSS) {
   wd->sta.ibssBssIsCreator = 0;
   zfTimerCancel(dev, ZM_EVENT_IBSS_MONITOR);
   zfStaIbssMonitoring(dev, 1);
  }







  wd->sta.wpaState = ZM_STA_WPA_STATE_INIT;


  wd->sta.connectTimeoutCount = 0;


  wd->sta.connectState = ZM_STA_CONN_STATE_NONE;


  wd->sta.leapEnabled = 0;


  if (wd->sta.rifsState == ZM_RIFS_STATE_DETECTED)
   zfHpDisableRifs(dev);
  wd->sta.rifsState = ZM_RIFS_STATE_DETECTING;
  wd->sta.rifsLikeFrameCnt = 0;
  wd->sta.rifsCount = 0;

  wd->sta.osRxFilter = 0;
  wd->sta.bSafeMode = 0;

  zfChangeAdapterState(dev, ZM_STA_STATE_DISCONNECT);
  if (ResetKeyCache)
   zfHpResetKeyCache(dev);

  if (isConnected) {
   if (wd->zfcbConnectNotify != ((void*)0))
    wd->zfcbConnectNotify(dev,
    ZM_STATUS_MEDIA_CONNECTION_DISABLED,
    wd->sta.bssid);
  } else {
   if (wd->zfcbConnectNotify != ((void*)0))
    wd->zfcbConnectNotify(dev,
    ZM_STATUS_MEDIA_DISABLED, wd->sta.bssid);
  }
 } else {
  for (i = 0; i < ZM_MAX_STA_SUPPORT; i++) {

   if (wd->ap.staTable[i].valid == 1) {

    zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_DEAUTH,
    wd->ap.staTable[i].addr, 3, 0, 0);
   }
  }

  if (ResetKeyCache)
   zfHpResetKeyCache(dev);

  wd->ap.vapNumber--;
 }


 zfHpDisableBeacon(dev);


 zfFlushVtxq(dev);

 zfApFlushBufferedPsFrame(dev);

 zfAgingDefragList(dev, 1);
 zfZeroMemory((u8_t *)wd->sta.oppositeInfo,
   sizeof(struct zsOppositeInfo) * ZM_MAX_OPPOSITE_COUNT);


 if (wd->sta.SWEncryptEnable != 0) {
  zm_debug_msg0("Disable software encryption");
  zfStaDisableSWEncryption(dev);
 }





 return 0;
}
