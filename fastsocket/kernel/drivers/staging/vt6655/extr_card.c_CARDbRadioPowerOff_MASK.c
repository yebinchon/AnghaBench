#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ bRadioOff; int byRFType; int /*<<< orphan*/  PortOffset; int /*<<< orphan*/  byLocalID; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__* PSDevice ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HOSTCR_RXON ; 
 int /*<<< orphan*/  LED_ACTSET ; 
 int /*<<< orphan*/  MAC_REG_GPIOCTL0 ; 
 int /*<<< orphan*/  MAC_REG_HOSTCR ; 
 int /*<<< orphan*/  MAC_REG_SOFTPWRCTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  RF_AIROHA 131 
#define  RF_AIROHA7230 130 
#define  RF_AL2230S 129 
#define  RF_RFMD2959 128 
 int /*<<< orphan*/  SOFTPWRCTL_SWPE1 ; 
 int /*<<< orphan*/  SOFTPWRCTL_SWPE2 ; 
 int /*<<< orphan*/  SOFTPWRCTL_SWPE3 ; 
 int /*<<< orphan*/  SOFTPWRCTL_TXPEINV ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

BOOL FUNC6 (PVOID pDeviceHandler)
{
    PSDevice    pDevice = (PSDevice) pDeviceHandler;
    BOOL        bResult = TRUE;

    if (pDevice->bRadioOff == TRUE)
        return TRUE;


    switch (pDevice->byRFType) {

        case RF_RFMD2959:
            FUNC3(pDevice->PortOffset, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_TXPEINV);
            FUNC4(pDevice->PortOffset, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE1);
            break;

        case RF_AIROHA:
        case RF_AL2230S:
        case RF_AIROHA7230: //RobertYu:20050104
            FUNC3(pDevice->PortOffset, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE2);
            FUNC3(pDevice->PortOffset, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
            break;

    }

    FUNC1(pDevice->PortOffset, MAC_REG_HOSTCR, HOSTCR_RXON);

    FUNC0(pDevice->PortOffset, pDevice->byLocalID);

    pDevice->bRadioOff = TRUE;
     //2007-0409-03,<Add> by chester
FUNC5("chester power off\n");
FUNC2(pDevice->PortOffset, MAC_REG_GPIOCTL0, LED_ACTSET);  //LED issue
    return bResult;
}