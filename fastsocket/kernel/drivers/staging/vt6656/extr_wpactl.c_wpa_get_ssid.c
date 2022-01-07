
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
struct TYPE_8__ {TYPE_1__ wpa_associate; } ;
struct viawget_wpa_param {TYPE_2__ u; } ;
struct TYPE_10__ {scalar_t__ abyCurrSSID; } ;
struct TYPE_11__ {TYPE_4__ sMgmtObj; } ;
struct TYPE_9__ {int len; int abySSID; } ;
typedef TYPE_3__* PWLAN_IE_SSID ;
typedef TYPE_4__* PSMgmtObject ;
typedef TYPE_5__* PSDevice ;


 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int wpa_get_ssid(PSDevice pDevice,
         struct viawget_wpa_param *param)
{
    PSMgmtObject pMgmt = &(pDevice->sMgmtObj);
 PWLAN_IE_SSID pItemSSID;
 int ret = 0;

    pItemSSID = (PWLAN_IE_SSID)pMgmt->abyCurrSSID;

 memcpy(param->u.wpa_associate.ssid, pItemSSID->abySSID , pItemSSID->len);
 param->u.wpa_associate.ssid_len = pItemSSID->len;

    return ret;
}
