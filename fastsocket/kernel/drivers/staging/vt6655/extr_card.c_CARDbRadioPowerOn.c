
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bRadioControlOff; scalar_t__ bHWRadioOff; scalar_t__ bRadioOff; int byRFType; int PortOffset; int byLocalID; } ;
typedef int PVOID ;
typedef TYPE_1__* PSDevice ;
typedef scalar_t__ BOOL ;


 int BBvExitDeepSleep (int ,int ) ;
 scalar_t__ FALSE ;
 int HOSTCR_RXON ;
 int LED_ACTSET ;
 int MAC_REG_GPIOCTL0 ;
 int MAC_REG_HOSTCR ;
 int MAC_REG_SOFTPWRCTL ;
 int MACvRegBitsOff (int ,int ,int ) ;
 int MACvRegBitsOn (int ,int ,int ) ;
 int MACvWordRegBitsOff (int ,int ,int ) ;
 int MACvWordRegBitsOn (int ,int ,int) ;




 int SOFTPWRCTL_SWPE1 ;
 int SOFTPWRCTL_SWPE2 ;
 int SOFTPWRCTL_SWPE3 ;
 int SOFTPWRCTL_TXPEINV ;
 scalar_t__ TRUE ;
 int printk (char*) ;

BOOL CARDbRadioPowerOn (PVOID pDeviceHandler)
{
    PSDevice pDevice = (PSDevice) pDeviceHandler;
    BOOL bResult = TRUE;
printk("chester power on\n");
    if (pDevice->bRadioControlOff == TRUE){
if (pDevice->bHWRadioOff == TRUE) printk("chester bHWRadioOff\n");
if (pDevice->bRadioControlOff == TRUE) printk("chester bRadioControlOff\n");
        return FALSE;}

    if (pDevice->bRadioOff == FALSE)
       {
printk("chester pbRadioOff\n");
return TRUE;}

    BBvExitDeepSleep(pDevice->PortOffset, pDevice->byLocalID);

    MACvRegBitsOn(pDevice->PortOffset, MAC_REG_HOSTCR, HOSTCR_RXON);

    switch (pDevice->byRFType) {

        case 128:
            MACvWordRegBitsOn(pDevice->PortOffset, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_TXPEINV);
            MACvWordRegBitsOff(pDevice->PortOffset, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE1);
            break;

        case 131:
        case 129:
        case 130:
            MACvWordRegBitsOn(pDevice->PortOffset, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE2 |
                                                                        SOFTPWRCTL_SWPE3));
            break;

    }

    pDevice->bRadioOff = FALSE;

printk("chester power on\n");
MACvRegBitsOff(pDevice->PortOffset, MAC_REG_GPIOCTL0, LED_ACTSET);
    return bResult;
}
