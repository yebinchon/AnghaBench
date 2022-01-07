
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ eCurrMode; scalar_t__ eCurrState; scalar_t__ uIBSSChannel; scalar_t__ uScanChannel; } ;
struct TYPE_6__ {TYPE_1__ sMgmtObj; } ;
typedef TYPE_1__* PSMgmtObject ;
typedef TYPE_2__* PSDevice ;
typedef scalar_t__ BOOL ;


 scalar_t__ CB_MAX_CHANNEL_24G ;
 scalar_t__ FALSE ;
 int MAC_REG_TCR ;
 int MACvRegBitsOff (TYPE_2__*,int ,int ) ;
 int TCR_AUTOBCNTX ;
 scalar_t__ TRUE ;
 scalar_t__ WMAC_MODE_IBSS_STA ;
 scalar_t__ WMAC_STATE_STARTED ;

__attribute__((used)) static
void
vAdHocBeaconStop(PSDevice pDevice)
{

    PSMgmtObject pMgmt = &(pDevice->sMgmtObj);
    BOOL bStop;
    bStop = FALSE;
    if ((pMgmt->eCurrMode == WMAC_MODE_IBSS_STA) &&
    (pMgmt->eCurrState >= WMAC_STATE_STARTED))
    {
        if ((pMgmt->uIBSSChannel <= CB_MAX_CHANNEL_24G) &&
             (pMgmt->uScanChannel > CB_MAX_CHANNEL_24G))
        {
            bStop = TRUE;
        }
        if (pMgmt->uIBSSChannel > CB_MAX_CHANNEL_24G)
        {
            bStop = TRUE;
        }
    }

    if (bStop)
    {


        MACvRegBitsOff(pDevice, MAC_REG_TCR, TCR_AUTOBCNTX);
    }

}
