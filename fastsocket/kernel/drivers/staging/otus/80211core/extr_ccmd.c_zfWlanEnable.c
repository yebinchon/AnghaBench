
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct TYPE_5__ {scalar_t__ cmDisallowSsidLength; scalar_t__ ssidLen; scalar_t__ wepStatus; scalar_t__ EnableHT; int bssid; int authMode; int cmDisallowSsid; int ssid; scalar_t__ oppositeCount; } ;
struct TYPE_6__ {int apBitmap; int staAgingTimeSec; int staProbingTimeSec; int* ssidLen; char** ssid; scalar_t__* encryMode; int* capab; scalar_t__* wlanType; int vapNumber; int * authAlgo; scalar_t__* bcmcTail; scalar_t__* bcmcHead; scalar_t__* hideSsid; scalar_t__ beaconCounter; } ;
struct TYPE_7__ {int bRateBasic; int gRateBasic; int ssidLen; char* ssid; scalar_t__ encryMode; int authMode; int bgMode; } ;
struct TYPE_8__ {int wlanMode; int bRate; int gRate; int bRateBasic; int gRateBasic; int CurrentTxRateKbps; int CurrentRxRateKbps; int state; TYPE_1__ sta; int (* zfcbConnectNotify ) (int *,int ,int ) ;int frequency; TYPE_2__ ap; TYPE_3__ ws; int bgMode; } ;


 int ZM_AUTH_MODE_WPA2PSK ;
 scalar_t__ ZM_ENCRYPTION_TKIP ;
 int ZM_HAL_80211_MODE_IBSS_GENERAL ;
 int ZM_HAL_80211_MODE_IBSS_WPA2PSK ;
 int ZM_HAL_80211_MODE_STA ;
 int ZM_HP_CAP_11N_ONE_TX_STREAM ;
 int ZM_LV_0 ;
 int ZM_MAX_AP_SUPPORT ;
 int ZM_MODE_AP ;



 int ZM_MODE_UNKNOWN ;
 int ZM_SCAN_MGR_SCAN_EXTERNAL ;
 int ZM_SCAN_MGR_SCAN_INTERNAL ;
 int ZM_STATUS_MEDIA_CONNECT ;
 int ZM_STA_STATE_CONNECTED ;
 int ZM_WLAN_STATE_ENABLED ;
 scalar_t__ ZM_WLAN_TYPE_PURE_B ;
 int stub1 (int *,int ,int ) ;
 int stub2 (int *,int ,int ) ;
 TYPE_4__* wd ;
 int zfApInitStaTbl (int *) ;
 int zfApSendBeacon (int *) ;
 int zfApSetProtectionMode (int *,int ) ;
 int zfChangeAdapterState (int *,int ) ;
 int zfCoreSetFrequency (int *,int ) ;
 int zfHpCapability (int *) ;
 int zfHpSetApStaMode (int *,int ) ;
 int zfIbssConnectNetwork (int *) ;
 int zfInfraConnectNetwork (int *) ;
 int zfInitMacApMode (int *) ;
 scalar_t__ zfMemoryIsEqual (int ,int ,scalar_t__) ;
 int zfScanMgrScanStop (int *,int ) ;
 int zfStaInitOppositeInfo (int *) ;
 int zfStaResetStatus (int *,int ) ;
 int zfUpdateBssid (int *,int*) ;
 int zfWlanReset (int *) ;
 int zfwGetVapId (int *) ;
 int zm_debug_msg0 (char*) ;
 int zm_msg0_mm (int ,char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfWlanEnable(zdev_t *dev)
{
 u8_t bssid[6] = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0};
 u16_t i;

 zmw_get_wlan_dev(dev);

 zmw_declare_for_critical_section();

 if (wd->wlanMode == ZM_MODE_UNKNOWN) {
  zm_debug_msg0("Unknown Mode...Skip...");
  return 0;
 }

 if (wd->wlanMode == ZM_MODE_AP) {
  u16_t vapId;

  vapId = zfwGetVapId(dev);

  if (vapId == 0xffff) {

   zfApInitStaTbl(dev);


   wd->bRate = 0xf;
   wd->gRate = 0xff;
   wd->bRateBasic = 0xf;
   wd->gRateBasic = 0x0;

   wd->ap.apBitmap = 1;
   wd->ap.beaconCounter = 0;


   wd->ap.hideSsid[0] = 0;
   wd->ap.staAgingTimeSec = 10*60;
   wd->ap.staProbingTimeSec = 60;

   for (i = 0; i < ZM_MAX_AP_SUPPORT; i++)
    wd->ap.bcmcHead[i] = wd->ap.bcmcTail[i] = 0;




   wd->bRateBasic = wd->ws.bRateBasic;
   wd->gRateBasic = wd->ws.gRateBasic;
   wd->bgMode = wd->ws.bgMode;
   if ((wd->ws.ssidLen <= 32) && (wd->ws.ssidLen != 0)) {
    wd->ap.ssidLen[0] = wd->ws.ssidLen;
    for (i = 0; i < wd->ws.ssidLen; i++)
     wd->ap.ssid[0][i] = wd->ws.ssid[i];
    wd->ws.ssidLen = 0;
   }

   if (wd->ap.encryMode[0] == 0)
    wd->ap.capab[0] = 0x001;
   else
    wd->ap.capab[0] = 0x011;

   if (wd->ap.wlanType[0] != ZM_WLAN_TYPE_PURE_B)
    wd->ap.capab[0] |= 0x400;


  } else {
   wd->ap.apBitmap = 0x1 | (0x01 << (vapId+1));

   if ((wd->ws.ssidLen <= 32) && (wd->ws.ssidLen != 0)) {
    wd->ap.ssidLen[vapId+1] = wd->ws.ssidLen;
    for (i = 0; i < wd->ws.ssidLen; i++)
     wd->ap.ssid[vapId+1][i] =
        wd->ws.ssid[i];
    wd->ws.ssidLen = 0;
   }

   if (wd->ap.encryMode[vapId+1] == 0)
    wd->ap.capab[vapId+1] = 0x401;
   else
    wd->ap.capab[vapId+1] = 0x411;

   wd->ap.authAlgo[vapId+1] = wd->ws.authMode;
   wd->ap.encryMode[vapId+1] = wd->ws.encryMode;




  }

  wd->ap.vapNumber++;

  zfCoreSetFrequency(dev, wd->frequency);

  zfInitMacApMode(dev);


  zfApSetProtectionMode(dev, 0);

  zfApSendBeacon(dev);
 } else {

  zfScanMgrScanStop(dev, ZM_SCAN_MGR_SCAN_INTERNAL);
  zfScanMgrScanStop(dev, ZM_SCAN_MGR_SCAN_EXTERNAL);

  zmw_enter_critical_section(dev);
  wd->sta.oppositeCount = 0;


  zfStaInitOppositeInfo(dev);
  zmw_leave_critical_section(dev);

  zfStaResetStatus(dev, 0);

  if ((wd->sta.cmDisallowSsidLength != 0) &&
  (wd->sta.ssidLen == wd->sta.cmDisallowSsidLength) &&
  (zfMemoryIsEqual(wd->sta.ssid, wd->sta.cmDisallowSsid,
  wd->sta.ssidLen)) &&
  (wd->sta.wepStatus == ZM_ENCRYPTION_TKIP)) {
   zm_debug_msg0("countermeasures disallow association");
  } else {
   switch (wd->wlanMode) {
   case 130:

    if (wd->sta.authMode == ZM_AUTH_MODE_WPA2PSK)
     zfHpSetApStaMode(dev,
     ZM_HAL_80211_MODE_IBSS_WPA2PSK);
    else
     zfHpSetApStaMode(dev,
     ZM_HAL_80211_MODE_IBSS_GENERAL);

    zm_msg0_mm(ZM_LV_0, "ZM_MODE_IBSS");
    zfIbssConnectNetwork(dev);
    break;

   case 129:

    zfHpSetApStaMode(dev, ZM_HAL_80211_MODE_STA);

    zfInfraConnectNetwork(dev);
    break;

   case 128:

    zfHpSetApStaMode(dev, ZM_HAL_80211_MODE_STA);

    zfUpdateBssid(dev, bssid);
    zfCoreSetFrequency(dev, wd->frequency);
    break;

   default:
    break;
   }
  }

 }





 if (wd->wlanMode == 128) {

  zfWlanReset(dev);

  if (wd->zfcbConnectNotify != ((void*)0))
   wd->zfcbConnectNotify(dev, ZM_STATUS_MEDIA_CONNECT,
        wd->sta.bssid);
  zfChangeAdapterState(dev, ZM_STA_STATE_CONNECTED);
 }


 if (wd->wlanMode == ZM_MODE_AP) {
  if (wd->zfcbConnectNotify != ((void*)0))
   wd->zfcbConnectNotify(dev, ZM_STATUS_MEDIA_CONNECT,
        wd->sta.bssid);

 }


 if (wd->sta.EnableHT) {
  u32_t oneTxStreamCap;
  oneTxStreamCap = (zfHpCapability(dev) &
      ZM_HP_CAP_11N_ONE_TX_STREAM);
  if (oneTxStreamCap)
   wd->CurrentTxRateKbps = 135000;
  else
   wd->CurrentTxRateKbps = 270000;
  wd->CurrentRxRateKbps = 270000;
 } else {
  wd->CurrentTxRateKbps = 54000;
  wd->CurrentRxRateKbps = 54000;
 }

 wd->state = ZM_WLAN_STATE_ENABLED;

 return 0;
}
