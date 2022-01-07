
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int byRFType; void* bRadioOff; } ;
typedef int PVOID ;
typedef TYPE_1__* PSDevice ;
typedef void* BOOL ;


 int BBvSetDeepSleep (TYPE_1__*) ;
 int HOSTCR_RXON ;
 int MAC_REG_HOSTCR ;
 int MAC_REG_SOFTPWRCTL ;
 int MACvRegBitsOff (TYPE_1__*,int ,int) ;






 int SOFTPWRCTL_SWPE2 ;
 int SOFTPWRCTL_SWPE3 ;
 void* TRUE ;

BOOL CARDbRadioPowerOff (PVOID pDeviceHandler)
{
PSDevice pDevice = (PSDevice) pDeviceHandler;
BOOL bResult = TRUE;




    pDevice->bRadioOff = TRUE;

    switch (pDevice->byRFType) {
        case 132:
        case 131:
        case 133:
        case 130:
        case 129:
        case 128:
            MACvRegBitsOff(pDevice, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
            break;
    }

    MACvRegBitsOff(pDevice, MAC_REG_HOSTCR, HOSTCR_RXON);

    BBvSetDeepSleep(pDevice);

    return bResult;
}
