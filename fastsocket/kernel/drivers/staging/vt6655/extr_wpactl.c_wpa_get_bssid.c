
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bssid; } ;
struct TYPE_7__ {TYPE_1__ wpa_associate; } ;
struct viawget_wpa_param {TYPE_2__ u; } ;
struct TYPE_9__ {TYPE_3__* pMgmt; } ;
struct TYPE_8__ {int abyCurrBSSID; } ;
typedef TYPE_3__* PSMgmtObject ;
typedef TYPE_4__* PSDevice ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static int wpa_get_bssid(PSDevice pDevice,
         struct viawget_wpa_param *param)
{
    PSMgmtObject pMgmt = pDevice->pMgmt;
 int ret = 0;

 memcpy(param->u.wpa_associate.bssid, pMgmt->abyCurrBSSID , 6);

    return ret;

}
