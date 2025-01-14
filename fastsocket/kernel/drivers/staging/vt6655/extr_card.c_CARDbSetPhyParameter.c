
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_4__ {scalar_t__ byRFType; int* abyBBVGA; scalar_t__ bProtectMode; scalar_t__ bBarkerPreambleMd; int bySIFS; int byDIFS; scalar_t__ byEIFS; int bySlot; int byCWMaxMin; int eCurrentPHYType; scalar_t__ byPreambleType; scalar_t__ byShortPreamble; scalar_t__ PortOffset; int bShortSlotTime; } ;
typedef int * PWLAN_IE_SUPP_RATES ;
typedef scalar_t__ PVOID ;
typedef TYPE_1__* PSDevice ;
typedef int CARD_PHY_TYPE ;
typedef int BYTE ;
typedef int BOOL ;


 int BB_TYPE_11A ;
 int BB_TYPE_11B ;
 int BB_TYPE_11G ;
 int BBbReadEmbeded (scalar_t__,int,int*) ;
 int BBbWriteEmbeded (scalar_t__,int,int) ;
 int BBvSetShortSlotTime (TYPE_1__*) ;
 scalar_t__ C_EIFS ;
 int C_SIFS_A ;
 int C_SIFS_BG ;
 int C_SLOT_LONG ;
 int C_SLOT_SHORT ;
 int FALSE ;
 scalar_t__ MAC_REG_CWMAXMIN0 ;
 scalar_t__ MAC_REG_DIFS ;
 scalar_t__ MAC_REG_EIFS ;
 scalar_t__ MAC_REG_SIFS ;
 scalar_t__ MAC_REG_SLOT ;
 int MACvDisableBarkerPreambleMd (scalar_t__) ;
 int MACvDisableProtectMD (scalar_t__) ;
 int MACvEnableBarkerPreambleMd (scalar_t__) ;
 int MACvEnableProtectMD (scalar_t__) ;
 int MACvSetBBType (scalar_t__,int ) ;
 int PHY_TYPE_11A ;
 int PHY_TYPE_11B ;
 scalar_t__ RATE_11M ;
 scalar_t__ RF_AIROHA7230 ;
 scalar_t__ RF_RFMD2959 ;
 scalar_t__ RF_UW2452 ;
 int TRUE ;
 int VNSvOutPortB (scalar_t__,int) ;
 scalar_t__ VNTWIFIbIsBarkerMode (int) ;
 scalar_t__ VNTWIFIbIsProtectMode (int) ;
 scalar_t__ VNTWIFIbIsShortPreamble (int ) ;
 scalar_t__ VNTWIFIbIsShortSlotTime (int ) ;
 scalar_t__ VNTWIFIbyGetMaxSupportRate (int *,int *) ;
 scalar_t__ abyDefaultExtSuppRatesG ;
 scalar_t__ abyDefaultSuppRatesA ;
 scalar_t__ abyDefaultSuppRatesB ;
 scalar_t__ abyDefaultSuppRatesG ;
 int s_vSetRSPINF (TYPE_1__*,int ,int *,int *) ;

BOOL CARDbSetPhyParameter (PVOID pDeviceHandler, CARD_PHY_TYPE ePHYType, WORD wCapInfo, BYTE byERPField, PVOID pvSupportRateIEs, PVOID pvExtSupportRateIEs)
{
    PSDevice pDevice = (PSDevice) pDeviceHandler;
    BYTE byCWMaxMin = 0;
    BYTE bySlot = 0;
    BYTE bySIFS = 0;
    BYTE byDIFS = 0;
    BYTE byData;

    PWLAN_IE_SUPP_RATES pSupportRates = (PWLAN_IE_SUPP_RATES) pvSupportRateIEs;
    PWLAN_IE_SUPP_RATES pExtSupportRates = (PWLAN_IE_SUPP_RATES) pvExtSupportRateIEs;



    if (ePHYType == PHY_TYPE_11A) {
        if (pSupportRates == ((void*)0)) {
            pSupportRates = (PWLAN_IE_SUPP_RATES) abyDefaultSuppRatesA;
        }
        if (pDevice->byRFType == RF_AIROHA7230) {

            MACvSetBBType(pDevice->PortOffset, BB_TYPE_11G);
            pDevice->abyBBVGA[0] = 0x20;
            pDevice->abyBBVGA[2] = 0x10;
            pDevice->abyBBVGA[3] = 0x10;
            BBbReadEmbeded(pDevice->PortOffset, 0xE7, &byData);
            if (byData == 0x1C) {
                BBbWriteEmbeded(pDevice->PortOffset, 0xE7, pDevice->abyBBVGA[0]);
            }
        } else if (pDevice->byRFType == RF_UW2452) {
            MACvSetBBType(pDevice->PortOffset, BB_TYPE_11A);
            pDevice->abyBBVGA[0] = 0x18;
            BBbReadEmbeded(pDevice->PortOffset, 0xE7, &byData);
            if (byData == 0x14) {
                BBbWriteEmbeded(pDevice->PortOffset, 0xE7, pDevice->abyBBVGA[0]);
                BBbWriteEmbeded(pDevice->PortOffset, 0xE1, 0x57);
            }
        } else {
            MACvSetBBType(pDevice->PortOffset, BB_TYPE_11A);
        }
        BBbWriteEmbeded(pDevice->PortOffset, 0x88, 0x03);
        bySlot = C_SLOT_SHORT;
        bySIFS = C_SIFS_A;
        byDIFS = C_SIFS_A + 2*C_SLOT_SHORT;
        byCWMaxMin = 0xA4;
    } else if (ePHYType == PHY_TYPE_11B) {
        if (pSupportRates == ((void*)0)) {
            pSupportRates = (PWLAN_IE_SUPP_RATES) abyDefaultSuppRatesB;
        }
        MACvSetBBType(pDevice->PortOffset, BB_TYPE_11B);
        if (pDevice->byRFType == RF_AIROHA7230) {
            pDevice->abyBBVGA[0] = 0x1C;
            pDevice->abyBBVGA[2] = 0x00;
            pDevice->abyBBVGA[3] = 0x00;
            BBbReadEmbeded(pDevice->PortOffset, 0xE7, &byData);
            if (byData == 0x20) {
                BBbWriteEmbeded(pDevice->PortOffset, 0xE7, pDevice->abyBBVGA[0]);
            }
        } else if (pDevice->byRFType == RF_UW2452) {
            pDevice->abyBBVGA[0] = 0x14;
            BBbReadEmbeded(pDevice->PortOffset, 0xE7, &byData);
            if (byData == 0x18) {
                BBbWriteEmbeded(pDevice->PortOffset, 0xE7, pDevice->abyBBVGA[0]);
                BBbWriteEmbeded(pDevice->PortOffset, 0xE1, 0xD3);
            }
        }
        BBbWriteEmbeded(pDevice->PortOffset, 0x88, 0x02);
        bySlot = C_SLOT_LONG;
        bySIFS = C_SIFS_BG;
        byDIFS = C_SIFS_BG + 2*C_SLOT_LONG;
        byCWMaxMin = 0xA5;
    } else {
        if (pSupportRates == ((void*)0)) {
            pSupportRates = (PWLAN_IE_SUPP_RATES) abyDefaultSuppRatesG;
            pExtSupportRates = (PWLAN_IE_SUPP_RATES) abyDefaultExtSuppRatesG;
        }
        MACvSetBBType(pDevice->PortOffset, BB_TYPE_11G);
        if (pDevice->byRFType == RF_AIROHA7230) {
            pDevice->abyBBVGA[0] = 0x1C;
            pDevice->abyBBVGA[2] = 0x00;
            pDevice->abyBBVGA[3] = 0x00;
            BBbReadEmbeded(pDevice->PortOffset, 0xE7, &byData);
            if (byData == 0x20) {
                BBbWriteEmbeded(pDevice->PortOffset, 0xE7, pDevice->abyBBVGA[0]);
            }
        } else if (pDevice->byRFType == RF_UW2452) {
            pDevice->abyBBVGA[0] = 0x14;
            BBbReadEmbeded(pDevice->PortOffset, 0xE7, &byData);
            if (byData == 0x18) {
                BBbWriteEmbeded(pDevice->PortOffset, 0xE7, pDevice->abyBBVGA[0]);
                BBbWriteEmbeded(pDevice->PortOffset, 0xE1, 0xD3);
            }
        }
        BBbWriteEmbeded(pDevice->PortOffset, 0x88, 0x08);
        bySIFS = C_SIFS_BG;
        if(VNTWIFIbIsShortSlotTime(wCapInfo)) {
            bySlot = C_SLOT_SHORT;
            byDIFS = C_SIFS_BG + 2*C_SLOT_SHORT;
        } else {
            bySlot = C_SLOT_LONG;
            byDIFS = C_SIFS_BG + 2*C_SLOT_LONG;
     }
        if (VNTWIFIbyGetMaxSupportRate(pSupportRates, pExtSupportRates) > RATE_11M) {
            byCWMaxMin = 0xA4;
        } else {
            byCWMaxMin = 0xA5;
        }
        if (pDevice->bProtectMode != VNTWIFIbIsProtectMode(byERPField)) {
            pDevice->bProtectMode = VNTWIFIbIsProtectMode(byERPField);
            if (pDevice->bProtectMode) {
                MACvEnableProtectMD(pDevice->PortOffset);
            } else {
                MACvDisableProtectMD(pDevice->PortOffset);
            }
        }
        if (pDevice->bBarkerPreambleMd != VNTWIFIbIsBarkerMode(byERPField)) {
            pDevice->bBarkerPreambleMd = VNTWIFIbIsBarkerMode(byERPField);
            if (pDevice->bBarkerPreambleMd) {
                MACvEnableBarkerPreambleMd(pDevice->PortOffset);
            } else {
                MACvDisableBarkerPreambleMd(pDevice->PortOffset);
            }
        }
    }

    if (pDevice->byRFType == RF_RFMD2959) {


        bySIFS -= 3;
        byDIFS -= 3;



    }

    if (pDevice->bySIFS != bySIFS) {
        pDevice->bySIFS = bySIFS;
        VNSvOutPortB(pDevice->PortOffset + MAC_REG_SIFS, pDevice->bySIFS);
    }
    if (pDevice->byDIFS != byDIFS) {
        pDevice->byDIFS = byDIFS;
        VNSvOutPortB(pDevice->PortOffset + MAC_REG_DIFS, pDevice->byDIFS);
    }
    if (pDevice->byEIFS != C_EIFS) {
        pDevice->byEIFS = C_EIFS;
        VNSvOutPortB(pDevice->PortOffset + MAC_REG_EIFS, pDevice->byEIFS);
    }
    if (pDevice->bySlot != bySlot) {
        pDevice->bySlot = bySlot;
        VNSvOutPortB(pDevice->PortOffset + MAC_REG_SLOT, pDevice->bySlot);
        if (pDevice->bySlot == C_SLOT_SHORT) {
            pDevice->bShortSlotTime = TRUE;
        } else {
            pDevice->bShortSlotTime = FALSE;
        }
        BBvSetShortSlotTime(pDevice);
    }
    if (pDevice->byCWMaxMin != byCWMaxMin) {
        pDevice->byCWMaxMin = byCWMaxMin;
        VNSvOutPortB(pDevice->PortOffset + MAC_REG_CWMAXMIN0, pDevice->byCWMaxMin);
    }
    if (VNTWIFIbIsShortPreamble(wCapInfo)) {
        pDevice->byPreambleType = pDevice->byShortPreamble;
    } else {
        pDevice->byPreambleType = 0;
    }
    s_vSetRSPINF(pDevice, ePHYType, pSupportRates, pExtSupportRates);
    pDevice->eCurrentPHYType = ePHYType;

    return (TRUE);
}
