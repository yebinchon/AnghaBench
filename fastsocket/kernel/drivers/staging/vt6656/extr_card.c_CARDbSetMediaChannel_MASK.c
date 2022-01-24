#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
typedef  int UINT ;
struct TYPE_7__ {scalar_t__ byBBType; int byCurPwr; int /*<<< orphan*/ * abyCCKPwrTbl; int /*<<< orphan*/ * abyOFDMPwrTbl; int /*<<< orphan*/ * abyOFDMAPwrTbl; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__* PSDevice ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ BB_TYPE_11A ; 
 scalar_t__ BB_TYPE_11G ; 
 int CB_MAX_CHANNEL ; 
 int CB_MAX_CHANNEL_24G ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACCR_CLRNAV ; 
 int /*<<< orphan*/  MAC_REG_CHANNEL ; 
 int /*<<< orphan*/  MAC_REG_MACCR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MESSAGE_REQUEST_MACREG ; 
 int /*<<< orphan*/  MESSAGE_TYPE_SELECT_CHANNLE ; 
 int /*<<< orphan*/  RATE_1M ; 
 int /*<<< orphan*/  RATE_54M ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL FUNC5 (PVOID pDeviceHandler, UINT uConnectionChannel)
{
PSDevice            pDevice = (PSDevice) pDeviceHandler;
BOOL                bResult = TRUE;


    if (pDevice->byBBType == BB_TYPE_11A) { // 15 ~ 38
        if ((uConnectionChannel < (CB_MAX_CHANNEL_24G+1)) || (uConnectionChannel > CB_MAX_CHANNEL))
            uConnectionChannel = (CB_MAX_CHANNEL_24G+1);
    } else {
        if ((uConnectionChannel > CB_MAX_CHANNEL_24G) || (uConnectionChannel == 0)) // 1 ~ 14
            uConnectionChannel = 1;
    }

    // clear NAV
    FUNC3(pDevice, MAC_REG_MACCR, MACCR_CLRNAV);

    // Set Channel[7] = 0 to tell H/W channel is changing now.
    FUNC2(pDevice, MAC_REG_CHANNEL, 0x80);

    //if (pMgmt->uCurrChannel == uConnectionChannel)
    //    return bResult;

    FUNC0(pDevice,
                        MESSAGE_TYPE_SELECT_CHANNLE,
                        (WORD) uConnectionChannel,
                        0,
                        0,
                        NULL
                        );

    //{{ RobertYu: 20041202
    //// TX_PE will reserve 3 us for MAX2829 A mode only, it is for better TX throughput

    if (pDevice->byBBType == BB_TYPE_11A) {
        pDevice->byCurPwr = 0xFF;
        FUNC4(pDevice, pDevice->abyOFDMAPwrTbl[uConnectionChannel-15], RATE_54M);
    } else if (pDevice->byBBType == BB_TYPE_11G) {
        pDevice->byCurPwr = 0xFF;
        FUNC4(pDevice, pDevice->abyOFDMPwrTbl[uConnectionChannel-1], RATE_54M);
    } else {
        pDevice->byCurPwr = 0xFF;
        FUNC4(pDevice, pDevice->abyCCKPwrTbl[uConnectionChannel-1], RATE_1M);
    }
    FUNC1(pDevice,MESSAGE_REQUEST_MACREG,MAC_REG_CHANNEL,(BYTE)(uConnectionChannel|0x80));
    return(bResult);
}