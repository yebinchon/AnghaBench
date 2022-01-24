#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ bValid; } ;
struct TYPE_5__ {scalar_t__ byCurrentCh; scalar_t__ eCurrentPHYType; scalar_t__ byRFType; scalar_t__ bEnablePSMode; scalar_t__ byLocalID; scalar_t__ PortOffset; int /*<<< orphan*/  byCurPwr; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__* PSDevice ;
typedef  scalar_t__ BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ CB_MAX_CHANNEL_24G ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  MACCR_CLRNAV ; 
 int /*<<< orphan*/  MAC_REG_MACCR ; 
 scalar_t__ MAC_REG_PWRCCK ; 
 scalar_t__ MAC_REG_PWROFDM ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ PHY_TYPE_11A ; 
 scalar_t__ PHY_TYPE_11B ; 
 scalar_t__ PHY_TYPE_11G ; 
 int /*<<< orphan*/  RATE_1M ; 
 int /*<<< orphan*/  RATE_6M ; 
 scalar_t__ REV_ID_VT3253_B1 ; 
 scalar_t__ RF_AIROHA7230 ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* sChannelTbl ; 

BOOL FUNC10 (PVOID pDeviceHandler, UINT uConnectionChannel)
{
    PSDevice    pDevice = (PSDevice) pDeviceHandler;
    BOOL        bResult = TRUE;


    if (pDevice->byCurrentCh == uConnectionChannel) {
        return bResult;
    }

    if (sChannelTbl[uConnectionChannel].bValid == FALSE) {
        return (FALSE);
    }

    if ((uConnectionChannel > CB_MAX_CHANNEL_24G) &&
        (pDevice->eCurrentPHYType != PHY_TYPE_11A)) {
        FUNC1(pDevice, PHY_TYPE_11A, 0, 0, NULL, NULL);
    } else if ((uConnectionChannel <= CB_MAX_CHANNEL_24G) &&
        (pDevice->eCurrentPHYType == PHY_TYPE_11A)) {
        FUNC1(pDevice, PHY_TYPE_11G, 0, 0, NULL, NULL);
    }
    // clear NAV
    FUNC2(pDevice->PortOffset, MAC_REG_MACCR, MACCR_CLRNAV);

    //{{ RobertYu: 20041202
    //// TX_PE will reserve 3 us for MAX2829 A mode only, it is for better TX throughput

    if ( pDevice->byRFType == RF_AIROHA7230 )
    {
        FUNC5(pDevice->PortOffset, pDevice->byCurrentCh, (BYTE)uConnectionChannel);
    }
    //}} RobertYu


    pDevice->byCurrentCh = (BYTE)uConnectionChannel;
    bResult &= FUNC6(pDevice->PortOffset, pDevice->byRFType, (BYTE)uConnectionChannel);

    // Init Synthesizer Table
    if (pDevice->bEnablePSMode == TRUE)
        FUNC8(pDevice->PortOffset, pDevice->byRFType, uConnectionChannel);


    //DBG_PRT(MSG_LEVEL_DEBUG, KERN_INFO"CARDbSetMediaChannel: %d\n", (BYTE)uConnectionChannel);
    FUNC0(pDevice->PortOffset);

    if (pDevice->byLocalID > REV_ID_VT3253_B1) {
        // set HW default power register
        FUNC4(pDevice->PortOffset);
        FUNC7(pDevice, RATE_1M, pDevice->byCurrentCh);
        FUNC9(pDevice->PortOffset + MAC_REG_PWRCCK, pDevice->byCurPwr);
        FUNC7(pDevice, RATE_6M, pDevice->byCurrentCh);
        FUNC9(pDevice->PortOffset + MAC_REG_PWROFDM, pDevice->byCurPwr);
        FUNC3(pDevice->PortOffset);
    }

    if (pDevice->eCurrentPHYType == PHY_TYPE_11B) {
#ifdef	PLICE_DEBUG
	//printk("Func:CARDbSetChannel:call RFbSetPower:11B\n");
#endif
        FUNC7(pDevice, RATE_1M, pDevice->byCurrentCh);
    } else {
#ifdef	PLICE_DEBUG
	//printk("Func:CARDbSetChannel:call RFbSetPower\n");
#endif
		FUNC7(pDevice, RATE_6M, pDevice->byCurrentCh);
    }

    return(bResult);
}