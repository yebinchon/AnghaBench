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
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMACTL_RUN ; 
 scalar_t__ MAC_REG_TXDMACTL0 ; 
 scalar_t__ MAC_REG_TXDMAPTR0 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ W_MAX_TIMEOUT ; 

void FUNC4 (DWORD_PTR dwIoBase, DWORD dwCurrDescAddr)
{
WORD    ww;
BYTE    byData;
BYTE    byOrgDMACtl;

    FUNC1(dwIoBase + MAC_REG_TXDMACTL0, &byOrgDMACtl);
    if (byOrgDMACtl & DMACTL_RUN) {
        FUNC2(dwIoBase + MAC_REG_TXDMACTL0+2, DMACTL_RUN);
    }
    for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
        FUNC1(dwIoBase + MAC_REG_TXDMACTL0, &byData);
        if ( !(byData & DMACTL_RUN))
            break;
    }
    if (ww == W_MAX_TIMEOUT) {
        FUNC0(0x25);
    }
    FUNC3(dwIoBase + MAC_REG_TXDMAPTR0, dwCurrDescAddr);
    if (byOrgDMACtl & DMACTL_RUN) {
        FUNC2(dwIoBase + MAC_REG_TXDMACTL0, DMACTL_RUN);
    }
}