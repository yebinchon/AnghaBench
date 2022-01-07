
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bHWRadioOff; scalar_t__ bRadioControlOff; int byRFType; scalar_t__ bRadioOff; } ;
typedef int PVOID ;
typedef TYPE_1__* PSDevice ;
typedef scalar_t__ BOOL ;


 int BBvExitDeepSleep (TYPE_1__*) ;
 scalar_t__ FALSE ;
 int HOSTCR_RXON ;
 int MAC_REG_HOSTCR ;
 int MAC_REG_SOFTPWRCTL ;
 int MACvRegBitsOn (TYPE_1__*,int ,int) ;






 int SOFTPWRCTL_SWPE2 ;
 int SOFTPWRCTL_SWPE3 ;
 scalar_t__ TRUE ;

BOOL CARDbRadioPowerOn (PVOID pDeviceHandler)
{
PSDevice pDevice = (PSDevice) pDeviceHandler;
BOOL bResult = TRUE;


    if ((pDevice->bHWRadioOff == TRUE) || (pDevice->bRadioControlOff == TRUE)) {
        return FALSE;
    }




    pDevice->bRadioOff = FALSE;

    BBvExitDeepSleep(pDevice);

    MACvRegBitsOn(pDevice, MAC_REG_HOSTCR, HOSTCR_RXON);

    switch (pDevice->byRFType) {
        case 132:
        case 131:
        case 133:
        case 130:
        case 129:
        case 128:
            MACvRegBitsOn(pDevice, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
            break;
    }

    return bResult;
}
