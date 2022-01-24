#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_4__ {scalar_t__ byRFType; int* abyBBVGA; scalar_t__ bProtectMode; scalar_t__ bBarkerPreambleMd; int bySIFS; int byDIFS; scalar_t__ byEIFS; int bySlot; int byCWMaxMin; int /*<<< orphan*/  eCurrentPHYType; scalar_t__ byPreambleType; scalar_t__ byShortPreamble; scalar_t__ PortOffset; int /*<<< orphan*/  bShortSlotTime; } ;
typedef  int /*<<< orphan*/ * PWLAN_IE_SUPP_RATES ;
typedef  scalar_t__ PVOID ;
typedef  TYPE_1__* PSDevice ;
typedef  int /*<<< orphan*/  CARD_PHY_TYPE ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BB_TYPE_11A ; 
 int /*<<< orphan*/  BB_TYPE_11B ; 
 int /*<<< orphan*/  BB_TYPE_11G ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ C_EIFS ; 
 int C_SIFS_A ; 
 int C_SIFS_BG ; 
 int C_SLOT_LONG ; 
 int C_SLOT_SHORT ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MAC_REG_CWMAXMIN0 ; 
 scalar_t__ MAC_REG_DIFS ; 
 scalar_t__ MAC_REG_EIFS ; 
 scalar_t__ MAC_REG_SIFS ; 
 scalar_t__ MAC_REG_SLOT ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHY_TYPE_11A ; 
 int /*<<< orphan*/  PHY_TYPE_11B ; 
 scalar_t__ RATE_11M ; 
 scalar_t__ RF_AIROHA7230 ; 
 scalar_t__ RF_RFMD2959 ; 
 scalar_t__ RF_UW2452 ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ abyDefaultExtSuppRatesG ; 
 scalar_t__ abyDefaultSuppRatesA ; 
 scalar_t__ abyDefaultSuppRatesB ; 
 scalar_t__ abyDefaultSuppRatesG ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

BOOL FUNC15 (PVOID pDeviceHandler, CARD_PHY_TYPE ePHYType, WORD wCapInfo, BYTE byERPField, PVOID pvSupportRateIEs, PVOID pvExtSupportRateIEs)
{
    PSDevice    pDevice = (PSDevice) pDeviceHandler;
    BYTE        byCWMaxMin = 0;
    BYTE        bySlot = 0;
    BYTE        bySIFS = 0;
    BYTE        byDIFS = 0;
    BYTE        byData;
//    PWLAN_IE_SUPP_RATES pRates = NULL;
    PWLAN_IE_SUPP_RATES pSupportRates = (PWLAN_IE_SUPP_RATES) pvSupportRateIEs;
    PWLAN_IE_SUPP_RATES pExtSupportRates = (PWLAN_IE_SUPP_RATES) pvExtSupportRateIEs;


    //Set SIFS, DIFS, EIFS, SlotTime, CwMin
    if (ePHYType == PHY_TYPE_11A) {
        if (pSupportRates == NULL) {
            pSupportRates = (PWLAN_IE_SUPP_RATES) abyDefaultSuppRatesA;
        }
        if (pDevice->byRFType == RF_AIROHA7230) {
            // AL7230 use single PAPE and connect to PAPE_2.4G
            FUNC7(pDevice->PortOffset, BB_TYPE_11G);
            pDevice->abyBBVGA[0] = 0x20;
            pDevice->abyBBVGA[2] = 0x10;
            pDevice->abyBBVGA[3] = 0x10;
            FUNC0(pDevice->PortOffset, 0xE7, &byData);
            if (byData == 0x1C) {
                FUNC1(pDevice->PortOffset, 0xE7, pDevice->abyBBVGA[0]);
            }
        } else if (pDevice->byRFType == RF_UW2452) {
            FUNC7(pDevice->PortOffset, BB_TYPE_11A);
            pDevice->abyBBVGA[0] = 0x18;
            FUNC0(pDevice->PortOffset, 0xE7, &byData);
            if (byData == 0x14) {
                FUNC1(pDevice->PortOffset, 0xE7, pDevice->abyBBVGA[0]);
                FUNC1(pDevice->PortOffset, 0xE1, 0x57);
            }
        } else {
            FUNC7(pDevice->PortOffset, BB_TYPE_11A);
        }
        FUNC1(pDevice->PortOffset, 0x88, 0x03);
        bySlot = C_SLOT_SHORT;
        bySIFS = C_SIFS_A;
        byDIFS = C_SIFS_A + 2*C_SLOT_SHORT;
        byCWMaxMin = 0xA4;
    } else if (ePHYType == PHY_TYPE_11B) {
        if (pSupportRates == NULL) {
            pSupportRates = (PWLAN_IE_SUPP_RATES) abyDefaultSuppRatesB;
        }
        FUNC7(pDevice->PortOffset, BB_TYPE_11B);
        if (pDevice->byRFType == RF_AIROHA7230) {
            pDevice->abyBBVGA[0] = 0x1C;
            pDevice->abyBBVGA[2] = 0x00;
            pDevice->abyBBVGA[3] = 0x00;
            FUNC0(pDevice->PortOffset, 0xE7, &byData);
            if (byData == 0x20) {
                FUNC1(pDevice->PortOffset, 0xE7, pDevice->abyBBVGA[0]);
            }
        } else if (pDevice->byRFType == RF_UW2452) {
            pDevice->abyBBVGA[0] = 0x14;
            FUNC0(pDevice->PortOffset, 0xE7, &byData);
            if (byData == 0x18) {
                FUNC1(pDevice->PortOffset, 0xE7, pDevice->abyBBVGA[0]);
                FUNC1(pDevice->PortOffset, 0xE1, 0xD3);
            }
        }
        FUNC1(pDevice->PortOffset, 0x88, 0x02);
        bySlot = C_SLOT_LONG;
        bySIFS = C_SIFS_BG;
        byDIFS = C_SIFS_BG + 2*C_SLOT_LONG;
        byCWMaxMin = 0xA5;
    } else {// PK_TYPE_11GA & PK_TYPE_11GB
        if (pSupportRates == NULL) {
            pSupportRates = (PWLAN_IE_SUPP_RATES) abyDefaultSuppRatesG;
            pExtSupportRates = (PWLAN_IE_SUPP_RATES) abyDefaultExtSuppRatesG;
        }
        FUNC7(pDevice->PortOffset, BB_TYPE_11G);
        if (pDevice->byRFType == RF_AIROHA7230) {
            pDevice->abyBBVGA[0] = 0x1C;
            pDevice->abyBBVGA[2] = 0x00;
            pDevice->abyBBVGA[3] = 0x00;
            FUNC0(pDevice->PortOffset, 0xE7, &byData);
            if (byData == 0x20) {
                FUNC1(pDevice->PortOffset, 0xE7, pDevice->abyBBVGA[0]);
            }
        } else if (pDevice->byRFType == RF_UW2452) {
            pDevice->abyBBVGA[0] = 0x14;
            FUNC0(pDevice->PortOffset, 0xE7, &byData);
            if (byData == 0x18) {
                FUNC1(pDevice->PortOffset, 0xE7, pDevice->abyBBVGA[0]);
                FUNC1(pDevice->PortOffset, 0xE1, 0xD3);
            }
        }
        FUNC1(pDevice->PortOffset, 0x88, 0x08);
        bySIFS = C_SIFS_BG;
        if(FUNC12(wCapInfo)) {
            bySlot = C_SLOT_SHORT;
            byDIFS = C_SIFS_BG + 2*C_SLOT_SHORT;
        } else {
            bySlot = C_SLOT_LONG;
            byDIFS = C_SIFS_BG + 2*C_SLOT_LONG;
	    }
        if (FUNC13(pSupportRates, pExtSupportRates) > RATE_11M) {
            byCWMaxMin = 0xA4;
        } else {
            byCWMaxMin = 0xA5;
        }
        if (pDevice->bProtectMode != FUNC10(byERPField)) {
            pDevice->bProtectMode = FUNC10(byERPField);
            if (pDevice->bProtectMode) {
                FUNC6(pDevice->PortOffset);
            } else {
                FUNC4(pDevice->PortOffset);
            }
        }
        if (pDevice->bBarkerPreambleMd != FUNC9(byERPField)) {
            pDevice->bBarkerPreambleMd = FUNC9(byERPField);
            if (pDevice->bBarkerPreambleMd) {
                FUNC5(pDevice->PortOffset);
            } else {
                FUNC3(pDevice->PortOffset);
            }
        }
    }

    if (pDevice->byRFType == RF_RFMD2959) {
        // bcs TX_PE will reserve 3 us
        // hardware's processing time here is 2 us.
        bySIFS -= 3;
        byDIFS -= 3;
    //{{ RobertYu: 20041202
    //// TX_PE will reserve 3 us for MAX2829 A mode only, it is for better TX throughput
    //// MAC will need 2 us to process, so the SIFS, DIFS can be shorter by 2 us.
    }

    if (pDevice->bySIFS != bySIFS) {
        pDevice->bySIFS = bySIFS;
        FUNC8(pDevice->PortOffset + MAC_REG_SIFS, pDevice->bySIFS);
    }
    if (pDevice->byDIFS != byDIFS) {
        pDevice->byDIFS = byDIFS;
        FUNC8(pDevice->PortOffset + MAC_REG_DIFS, pDevice->byDIFS);
    }
    if (pDevice->byEIFS != C_EIFS) {
        pDevice->byEIFS = C_EIFS;
        FUNC8(pDevice->PortOffset + MAC_REG_EIFS, pDevice->byEIFS);
    }
    if (pDevice->bySlot != bySlot) {
        pDevice->bySlot = bySlot;
        FUNC8(pDevice->PortOffset + MAC_REG_SLOT, pDevice->bySlot);
        if (pDevice->bySlot == C_SLOT_SHORT) {
            pDevice->bShortSlotTime = TRUE;
        } else {
            pDevice->bShortSlotTime = FALSE;
        }
        FUNC2(pDevice);
    }
    if (pDevice->byCWMaxMin != byCWMaxMin) {
        pDevice->byCWMaxMin = byCWMaxMin;
        FUNC8(pDevice->PortOffset + MAC_REG_CWMAXMIN0, pDevice->byCWMaxMin);
    }
    if (FUNC11(wCapInfo)) {
        pDevice->byPreambleType = pDevice->byShortPreamble;
    } else {
        pDevice->byPreambleType = 0;
    }
    FUNC14(pDevice, ePHYType, pSupportRates, pExtSupportRates);
    pDevice->eCurrentPHYType = ePHYType;
    // set for NDIS OID_802_11SUPPORTED_RATES
    return (TRUE);
}