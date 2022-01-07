
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ eCurrMode; scalar_t__ eCurrState; } ;
struct TYPE_6__ {TYPE_1__ sMgmtObj; } ;
typedef TYPE_1__* PSMgmtObject ;
typedef TYPE_2__* PSDevice ;


 int MAC_REG_TCR ;
 int MACvRegBitsOn (TYPE_2__*,int ,int ) ;
 int TCR_AUTOBCNTX ;
 scalar_t__ WMAC_MODE_IBSS_STA ;
 scalar_t__ WMAC_STATE_STARTED ;

__attribute__((used)) static
void
vAdHocBeaconRestart(PSDevice pDevice)
{
    PSMgmtObject pMgmt = &(pDevice->sMgmtObj);







    if ((pMgmt->eCurrMode == WMAC_MODE_IBSS_STA) &&
    (pMgmt->eCurrState >= WMAC_STATE_STARTED))
    {

        MACvRegBitsOn(pDevice, MAC_REG_TCR, TCR_AUTOBCNTX);
    }

}
