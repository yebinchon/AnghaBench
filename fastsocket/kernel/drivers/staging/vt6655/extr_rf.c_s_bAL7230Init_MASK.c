#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ DWORD_PTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int BY_AL7230_REG_LEN ; 
 int CB_AL7230_INIT_SEQ ; 
 scalar_t__ IFREGCTL_REGW ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ MAC_REG_PSPWRSIG ; 
 scalar_t__ MAC_REG_SOFTPWRCTL ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int) ; 
 int PSSIG_WPE2 ; 
 int PSSIG_WPE3 ; 
 int SOFTPWRCTL_SWPE2 ; 
 int SOFTPWRCTL_SWPE3 ; 
 int SOFTPWRCTL_SWPECTI ; 
 int SOFTPWRCTL_TXPEINV ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 scalar_t__* dwAL7230InitTable ; 

BOOL FUNC6 (DWORD_PTR dwIoBase)
{
    int     ii;
    BOOL    bResult;

    bResult = TRUE;

    //3-wire control for normal mode
    FUNC5(dwIoBase + MAC_REG_SOFTPWRCTL, 0);

    FUNC4(dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI  |
                                                     SOFTPWRCTL_TXPEINV));
    FUNC0(dwIoBase); //RobertYu:20050106, have DC value for Calibration

    for (ii = 0; ii < CB_AL7230_INIT_SEQ; ii++)
        bResult &= FUNC2(dwIoBase, dwAL7230InitTable[ii]);

    // PLL On
    FUNC4(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);

    //Calibration
    FUNC3(dwIoBase, 150);//150us
    bResult &= FUNC2(dwIoBase, (0x9ABA8F00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW)); //TXDCOC:active, RCK:diable
    FUNC3(dwIoBase, 30);//30us
    bResult &= FUNC2(dwIoBase, (0x3ABA8F00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW)); //TXDCOC:diable, RCK:active
    FUNC3(dwIoBase, 30);//30us
    bResult &= FUNC2(dwIoBase, dwAL7230InitTable[CB_AL7230_INIT_SEQ-1]); //TXDCOC:diable, RCK:diable

    FUNC4(dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3    |
                                                     SOFTPWRCTL_SWPE2    |
                                                     SOFTPWRCTL_SWPECTI  |
                                                     SOFTPWRCTL_TXPEINV));

    FUNC1(dwIoBase); // RobertYu:20050106

    // PE1: TX_ON, PE2: RX_ON, PE3: PLLON
    //3-wire control for power saving mode
    FUNC5(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); //1100 0000

    return bResult;
}