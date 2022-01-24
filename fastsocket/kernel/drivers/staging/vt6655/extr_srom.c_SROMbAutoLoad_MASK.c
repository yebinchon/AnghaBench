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
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CB_EEPROM_READBYTE_WAIT ; 
 int EEP_MAX_CONTEXT_SIZE ; 
 int /*<<< orphan*/  FALSE ; 
 int I2MCFG_NORETRY ; 
 int I2MCSR_AUTOLD ; 
 scalar_t__ MAC_REG_I2MCFG ; 
 scalar_t__ MAC_REG_I2MCSR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

BOOL FUNC4 (DWORD_PTR dwIoBase)
{
    BYTE    byWait;
    int     ii;

    BYTE    byOrg;

    FUNC2(dwIoBase + MAC_REG_I2MCFG, &byOrg);
    // turn on hardware retry
    FUNC3(dwIoBase + MAC_REG_I2MCFG, (byOrg | I2MCFG_NORETRY));

    FUNC0(dwIoBase, MAC_REG_I2MCSR, I2MCSR_AUTOLD);

    // ii = Rom Address
    for (ii = 0; ii < EEP_MAX_CONTEXT_SIZE; ii++) {
        FUNC1(dwIoBase, CB_EEPROM_READBYTE_WAIT);
        FUNC2(dwIoBase + MAC_REG_I2MCSR, &byWait);
        if ( !(byWait & I2MCSR_AUTOLD))
            break;
    }

    FUNC3(dwIoBase + MAC_REG_I2MCFG, byOrg);

    if (ii == EEP_MAX_CONTEXT_SIZE)
        return FALSE;
    return TRUE;
}