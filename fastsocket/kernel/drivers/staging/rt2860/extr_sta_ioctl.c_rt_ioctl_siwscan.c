
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct net_device {TYPE_5__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int dummy; } ;
typedef int ULONG ;
struct TYPE_17__ {scalar_t__ bRadio; scalar_t__ WpaSupplicantUP; int WpaSupplicantScanCount; scalar_t__ AuthMode; scalar_t__ PortSecured; int LastScanTime; scalar_t__ ScanCnt; scalar_t__ bScanReqIsFromWebUI; } ;
struct TYPE_16__ {int CurrReqIsFromNdis; } ;
struct TYPE_14__ {scalar_t__ CurrState; } ;
struct TYPE_15__ {TYPE_1__ CntlMachine; } ;
struct TYPE_18__ {scalar_t__ OpMode; scalar_t__ bPCIclkOff; TYPE_4__ StaCfg; TYPE_3__ MlmeAux; TYPE_2__ Mlme; } ;
typedef TYPE_5__* PRTMP_ADAPTER ;


 scalar_t__ CNTL_IDLE ;
 int DBGPRINT (int ,char*) ;
 int EINVAL ;
 int ENETDOWN ;
 int FALSE ;
 int GUI_IDLE_POWER_SAVE ;
 scalar_t__ IDLE_ON (TYPE_5__*) ;
 int MLME_CNTL_STATE_MACHINE ;
 scalar_t__ MONITOR_ON (TYPE_5__*) ;
 int MlmeEnqueue (TYPE_5__*,int ,int ,int ,int *) ;
 int NDIS_STATUS_SUCCESS ;
 scalar_t__ Ndis802_11AuthModeWPA ;
 scalar_t__ Ndis802_11AuthModeWPAPSK ;
 int OID_802_11_BSSID_LIST_SCAN ;
 scalar_t__ OPMODE_STA ;
 scalar_t__ OPSTATUS_TEST_FLAG (TYPE_5__*,int ) ;
 int RT28XX_MLME_HANDLER (TYPE_5__*) ;
 int RT28XX_MLME_RESET_STATE_MACHINE (TYPE_5__*) ;
 int RT28xxPciAsicRadioOn (TYPE_5__*,int ) ;
 scalar_t__ RTMP_TEST_FLAG (TYPE_5__*,int ) ;
 int RT_DEBUG_TRACE ;
 scalar_t__ TRUE ;
 scalar_t__ WPA_802_1X_PORT_NOT_SECURED ;
 scalar_t__ WPA_SUPPLICANT_ENABLE ;
 int fOP_STATUS_MEDIA_STATE_CONNECTED ;
 int fRTMP_ADAPTER_BSS_SCAN_IN_PROGRESS ;
 int fRTMP_ADAPTER_IDLE_RADIO_OFF ;
 int fRTMP_ADAPTER_INTERRUPT_IN_USE ;
 int jiffies ;

int rt_ioctl_siwscan(struct net_device *dev,
   struct iw_request_info *info,
   struct iw_point *data, char *extra)
{
 PRTMP_ADAPTER pAdapter = dev->ml_priv;

 ULONG Now;
 int Status = NDIS_STATUS_SUCCESS;


 if(!RTMP_TEST_FLAG(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
 {
  DBGPRINT(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
  return -ENETDOWN;
 }

 if (MONITOR_ON(pAdapter))
    {
        DBGPRINT(RT_DEBUG_TRACE, ("!!! Driver is in Monitor Mode now !!!\n"));
        return -EINVAL;
    }
 if (pAdapter->StaCfg.WpaSupplicantUP == WPA_SUPPLICANT_ENABLE)
 {
  pAdapter->StaCfg.WpaSupplicantScanCount++;
 }

    pAdapter->StaCfg.bScanReqIsFromWebUI = TRUE;
 if (RTMP_TEST_FLAG(pAdapter, fRTMP_ADAPTER_BSS_SCAN_IN_PROGRESS))
  return 0;
 do{
  Now = jiffies;

  if ((pAdapter->StaCfg.WpaSupplicantUP == WPA_SUPPLICANT_ENABLE) &&
   (pAdapter->StaCfg.WpaSupplicantScanCount > 3))
  {
   DBGPRINT(RT_DEBUG_TRACE, ("!!! WpaSupplicantScanCount > 3\n"));
   Status = NDIS_STATUS_SUCCESS;
   break;
  }

  if ((OPSTATUS_TEST_FLAG(pAdapter, fOP_STATUS_MEDIA_STATE_CONNECTED)) &&
   ((pAdapter->StaCfg.AuthMode == Ndis802_11AuthModeWPA) ||
   (pAdapter->StaCfg.AuthMode == Ndis802_11AuthModeWPAPSK)) &&
   (pAdapter->StaCfg.PortSecured == WPA_802_1X_PORT_NOT_SECURED))
  {
   DBGPRINT(RT_DEBUG_TRACE, ("!!! Link UP, Port Not Secured! ignore this set::OID_802_11_BSSID_LIST_SCAN\n"));
   Status = NDIS_STATUS_SUCCESS;
   break;
  }

  if (pAdapter->Mlme.CntlMachine.CurrState != CNTL_IDLE)
  {
   RT28XX_MLME_RESET_STATE_MACHINE(pAdapter);
   DBGPRINT(RT_DEBUG_TRACE, ("!!! MLME busy, reset MLME state machine !!!\n"));
  }



  pAdapter->MlmeAux.CurrReqIsFromNdis = FALSE;

  pAdapter->StaCfg.ScanCnt = 0;
  pAdapter->StaCfg.LastScanTime = Now;

  MlmeEnqueue(pAdapter,
   MLME_CNTL_STATE_MACHINE,
   OID_802_11_BSSID_LIST_SCAN,
   0,
   ((void*)0));

  Status = NDIS_STATUS_SUCCESS;
  RT28XX_MLME_HANDLER(pAdapter);
 }while(0);
 return 0;
}
