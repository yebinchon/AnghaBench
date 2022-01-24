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
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ MAC_REG_CHANNEL ; 
 int /*<<< orphan*/  MAC_REG_SOFTPWRCTL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOFTPWRCTL_SWPE3 ; 
 int /*<<< orphan*/  SWITCH_CHANNEL_DELAY_AL7230 ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/ * dwAL7230ChannelTable0 ; 
 int /*<<< orphan*/ * dwAL7230ChannelTable1 ; 
 int /*<<< orphan*/ * dwAL7230ChannelTable2 ; 

BOOL FUNC5 (DWORD_PTR dwIoBase, BYTE byChannel)
{
    BOOL    bResult;

    bResult = TRUE;

    // PLLON Off
    FUNC2(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);

    bResult &= FUNC0 (dwIoBase, dwAL7230ChannelTable0[byChannel-1]); //Reg0
    bResult &= FUNC0 (dwIoBase, dwAL7230ChannelTable1[byChannel-1]); //Reg1
    bResult &= FUNC0 (dwIoBase, dwAL7230ChannelTable2[byChannel-1]); //Reg4

    // PLLOn On
    FUNC3(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);

    // Set Channel[7] = 0 to tell H/W channel is changing now.
    FUNC4(dwIoBase + MAC_REG_CHANNEL, (byChannel & 0x7F));
    FUNC1(dwIoBase, SWITCH_CHANNEL_DELAY_AL7230);
    // Set Channel[7] = 1 to tell H/W channel change is done.
    FUNC4(dwIoBase + MAC_REG_CHANNEL, (byChannel | 0x80));

    return bResult;
}