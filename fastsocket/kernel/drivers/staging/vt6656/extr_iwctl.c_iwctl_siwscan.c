
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wrqu ;
typedef union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_scan_req {int essid_len; scalar_t__ scan_type; int essid; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; int flags; } ;
struct TYPE_5__ {scalar_t__ eScanState; void* eScanType; } ;
struct TYPE_6__ {int flags; scalar_t__ byReAssocCount; int lock; int bLinkPass; int dev; TYPE_2__ sMgmtObj; } ;
struct TYPE_4__ {char* abySSID; int len; int byElementID; } ;
typedef TYPE_1__* PWLAN_IE_SSID ;
typedef TYPE_2__* PSMgmtObject ;
typedef TYPE_3__* PSDevice ;
typedef int HANDLE ;
typedef union iwreq_data BYTE ;


 int BSSvClearBSSList (int ,int ) ;
 int DEVICE_FLAGS_OPENED ;
 int EAGAIN ;
 int EINVAL ;
 int IW_SCAN_THIS_ESSID ;
 scalar_t__ IW_SCAN_TYPE_PASSIVE ;
 int PRINT_K (char*,...) ;
 int SIOCGIWSCAN ;
 int WLAN_CMD_BSSID_SCAN ;
 int WLAN_EID_SSID ;
 int WLAN_IEHDR_LEN ;
 int WLAN_SSID_MAXLEN ;
 scalar_t__ WMAC_IS_SCANNING ;
 void* WMAC_SCAN_ACTIVE ;
 void* WMAC_SCAN_PASSIVE ;
 int bScheduleCommand (int ,int ,union iwreq_data*) ;
 int memcpy (char*,int ,int) ;
 int memset (union iwreq_data*,int ,int) ;
 int netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;

int iwctl_siwscan(struct net_device *dev,
             struct iw_request_info *info,
    struct iw_point *wrq,
             char *extra)
{
 PSDevice pDevice = (PSDevice)netdev_priv(dev);
  PSMgmtObject pMgmt = &(pDevice->sMgmtObj);
 struct iw_scan_req *req = (struct iw_scan_req *)extra;
 BYTE abyScanSSID[WLAN_IEHDR_LEN + WLAN_SSID_MAXLEN + 1];
 PWLAN_IE_SSID pItemSSID=((void*)0);


  if (!(pDevice->flags & DEVICE_FLAGS_OPENED))
        return -EINVAL;

    PRINT_K(" SIOCSIWSCAN \n");

if (pMgmt->eScanState == WMAC_IS_SCANNING) {

     PRINT_K("SIOCSIWSCAN(overlap??)-->In scanning...\n");
     return -EAGAIN;
  }

if(pDevice->byReAssocCount > 0) {

  union iwreq_data wrqu;
 PRINT_K("wireless_send_event--->SIOCGIWSCAN(scan done)\n");
 memset(&wrqu, 0, sizeof(wrqu));
 wireless_send_event(pDevice->dev, SIOCGIWSCAN, &wrqu, ((void*)0));
  return 0;
}

 spin_lock_irq(&pDevice->lock);






 if(wrq->length == sizeof(struct iw_scan_req)) {
   if (wrq->flags & IW_SCAN_THIS_ESSID) {
       memset(abyScanSSID, 0, WLAN_IEHDR_LEN + WLAN_SSID_MAXLEN + 1);
       pItemSSID = (PWLAN_IE_SSID)abyScanSSID;
       pItemSSID->byElementID = WLAN_EID_SSID;
       memcpy(pItemSSID->abySSID, req->essid, (int)req->essid_len);
         if (pItemSSID->abySSID[req->essid_len - 1] == '\0') {
           if(req->essid_len>0)
  pItemSSID->len = req->essid_len - 1;
         }
 else
   pItemSSID->len = req->essid_len;
   pMgmt->eScanType = WMAC_SCAN_PASSIVE;
         PRINT_K("SIOCSIWSCAN:[desired_ssid=%s,len=%d]\n",((PWLAN_IE_SSID)abyScanSSID)->abySSID,
                                                                                    ((PWLAN_IE_SSID)abyScanSSID)->len);
 bScheduleCommand((HANDLE) pDevice, WLAN_CMD_BSSID_SCAN, abyScanSSID);
 spin_unlock_irq(&pDevice->lock);

 return 0;
   }
   else if(req->scan_type == IW_SCAN_TYPE_PASSIVE) {
       pMgmt->eScanType = WMAC_SCAN_PASSIVE;
   }
 }
 else {
     pMgmt->eScanType = WMAC_SCAN_ACTIVE;
 }

  pMgmt->eScanType = WMAC_SCAN_PASSIVE;

 bScheduleCommand((HANDLE) pDevice, WLAN_CMD_BSSID_SCAN, ((void*)0));
 spin_unlock_irq(&pDevice->lock);

 return 0;
}
