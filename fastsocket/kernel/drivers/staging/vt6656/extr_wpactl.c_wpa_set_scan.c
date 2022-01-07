
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ssid_len; int ssid; } ;
struct TYPE_8__ {TYPE_1__ scan_req; } ;
struct viawget_wpa_param {TYPE_2__ u; } ;
struct TYPE_10__ {scalar_t__ abyDesireSSID; } ;
struct TYPE_11__ {int lock; int bLinkPass; TYPE_4__ sMgmtObj; } ;
struct TYPE_9__ {int len; int abySSID; int byElementID; } ;
typedef TYPE_3__* PWLAN_IE_SSID ;
typedef TYPE_4__* PSMgmtObject ;
typedef TYPE_5__* PSDevice ;
typedef int HANDLE ;


 int BSSvClearBSSList (int ,int ) ;
 int WLAN_CMD_BSSID_SCAN ;
 int WLAN_EID_SSID ;
 scalar_t__ WLAN_IEHDR_LEN ;
 scalar_t__ WLAN_SSID_MAXLEN ;
 int bScheduleCommand (int ,int ,scalar_t__) ;
 int memcpy (int ,int ,int ) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 int printk (char*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int wpa_set_scan(PSDevice pDevice,
         struct viawget_wpa_param *param)
{
 int ret = 0;



        PSMgmtObject pMgmt = &(pDevice->sMgmtObj);
        PWLAN_IE_SSID pItemSSID;
printk("wpa_set_scan-->desired [ssid=%s,ssid_len=%d]\n",
      param->u.scan_req.ssid,param->u.scan_req.ssid_len);

memset(pMgmt->abyDesireSSID, 0, WLAN_IEHDR_LEN + WLAN_SSID_MAXLEN + 1);
pItemSSID = (PWLAN_IE_SSID)pMgmt->abyDesireSSID;
pItemSSID->byElementID = WLAN_EID_SSID;
memcpy(pItemSSID->abySSID, param->u.scan_req.ssid, param->u.scan_req.ssid_len);
pItemSSID->len = param->u.scan_req.ssid_len;

    spin_lock_irq(&pDevice->lock);
    BSSvClearBSSList((HANDLE)pDevice, pDevice->bLinkPass);

        bScheduleCommand((HANDLE) pDevice, WLAN_CMD_BSSID_SCAN, pMgmt->abyDesireSSID);
    spin_unlock_irq(&pDevice->lock);

    return ret;
}
