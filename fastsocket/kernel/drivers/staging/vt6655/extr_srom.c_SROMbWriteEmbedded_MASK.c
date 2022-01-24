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
typedef  scalar_t__ WORD ;
typedef  scalar_t__ DWORD_PTR ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CB_DELAY_LOOP_WAIT ; 
 int EEP_I2C_DEV_ID ; 
 int /*<<< orphan*/  FALSE ; 
 int I2MCFG_NORETRY ; 
 int I2MCSR_DONE ; 
 int I2MCSR_EEMW ; 
 int I2MCSR_NACK ; 
 scalar_t__ MAC_REG_I2MCFG ; 
 scalar_t__ MAC_REG_I2MCSR ; 
 scalar_t__ MAC_REG_I2MDOPT ; 
 scalar_t__ MAC_REG_I2MTGAD ; 
 scalar_t__ MAC_REG_I2MTGID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__ W_MAX_I2CRETRY ; 
 scalar_t__ W_MAX_TIMEOUT ; 

BOOL FUNC3 (DWORD_PTR dwIoBase, BYTE byContntOffset, BYTE byData)
{
    WORD    wDelay, wNoACK;
    BYTE    byWait;

    BYTE    byOrg;

    FUNC1(dwIoBase + MAC_REG_I2MCFG, &byOrg);
    // turn off hardware retry for getting NACK
    FUNC2(dwIoBase + MAC_REG_I2MCFG, (byOrg & (~I2MCFG_NORETRY)));
    for (wNoACK = 0; wNoACK < W_MAX_I2CRETRY; wNoACK++) {
        FUNC2(dwIoBase + MAC_REG_I2MTGID, EEP_I2C_DEV_ID);
        FUNC2(dwIoBase + MAC_REG_I2MTGAD, byContntOffset);
        FUNC2(dwIoBase + MAC_REG_I2MDOPT, byData);

        // issue write command
        FUNC2(dwIoBase + MAC_REG_I2MCSR, I2MCSR_EEMW);
        // wait DONE be set
        for (wDelay = 0; wDelay < W_MAX_TIMEOUT; wDelay++) {
            FUNC1(dwIoBase + MAC_REG_I2MCSR, &byWait);
            if (byWait & (I2MCSR_DONE | I2MCSR_NACK))
                break;
            FUNC0(CB_DELAY_LOOP_WAIT);
        }

        if ((wDelay < W_MAX_TIMEOUT) &&
             ( !(byWait & I2MCSR_NACK))) {
            break;
        }
    }
    if (wNoACK == W_MAX_I2CRETRY) {
        FUNC2(dwIoBase + MAC_REG_I2MCFG, byOrg);
        return FALSE;
    }
    FUNC2(dwIoBase + MAC_REG_I2MCFG, byOrg);
    return TRUE;
}