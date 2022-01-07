
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct viawget_wpa_param {int dummy; } ;
struct TYPE_5__ {TYPE_1__* pMgmt; } ;
struct TYPE_4__ {int bShareKeyAlgorithm; int eAuthenMode; } ;
typedef TYPE_1__* PSMgmtObject ;
typedef TYPE_2__* PSDevice ;


 int FALSE ;
 int WMAC_AUTH_OPEN ;

__attribute__((used)) static int wpa_set_wpa(PSDevice pDevice,
         struct viawget_wpa_param *param)
{

    PSMgmtObject pMgmt = pDevice->pMgmt;
 int ret = 0;

    pMgmt->eAuthenMode = WMAC_AUTH_OPEN;
    pMgmt->bShareKeyAlgorithm = FALSE;

    return ret;
}
