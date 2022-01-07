
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {scalar_t__ abyCurrExtSuppRates; scalar_t__ abyCurrSuppRates; } ;
struct TYPE_7__ {scalar_t__ byPacketType; int uSlot; scalar_t__ uEIFS; void* uDIFS; void* uSIFS; int uCwMax; void* uCwMin; TYPE_1__ sMgmtObj; scalar_t__ bShortSlotTime; } ;
struct TYPE_6__ {size_t len; int* abyRates; } ;
typedef TYPE_2__* PWLAN_IE_SUPP_RATES ;
typedef int PVOID ;
typedef TYPE_3__* PSDevice ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int CONTROLnsRequestOut (TYPE_3__*,int ,int ,int ,int,int*) ;
 int C_CWMAX ;
 void* C_CWMIN_A ;
 void* C_CWMIN_B ;
 scalar_t__ C_EIFS ;
 void* C_SIFS_A ;
 void* C_SIFS_BG ;
 int C_SLOT_LONG ;
 int C_SLOT_SHORT ;
 scalar_t__ FALSE ;
 int MAC_REG_CWMAXMIN0 ;
 int MAC_REG_SIFS ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE ;
 scalar_t__ PK_TYPE_11A ;
 scalar_t__ PK_TYPE_11B ;
 scalar_t__ RATE_11M ;
 scalar_t__ RATEwGetRateIdx (int) ;
 scalar_t__ TRUE ;

void vUpdateIFS (PVOID pDeviceHandler)
{
    PSDevice pDevice = (PSDevice) pDeviceHandler;

    BYTE byMaxMin = 0;
    BYTE byData[4];

    if (pDevice->byPacketType==PK_TYPE_11A) {
        pDevice->uSlot = C_SLOT_SHORT;
        pDevice->uSIFS = C_SIFS_A;
        pDevice->uDIFS = C_SIFS_A + 2*C_SLOT_SHORT;
        pDevice->uCwMin = C_CWMIN_A;
        byMaxMin = 4;
    }
    else if (pDevice->byPacketType==PK_TYPE_11B) {
        pDevice->uSlot = C_SLOT_LONG;
        pDevice->uSIFS = C_SIFS_BG;
        pDevice->uDIFS = C_SIFS_BG + 2*C_SLOT_LONG;
          pDevice->uCwMin = C_CWMIN_B;
        byMaxMin = 5;
    }
    else {
        BYTE byRate = 0;
        BOOL bOFDMRate = FALSE;
        UINT ii = 0;
        PWLAN_IE_SUPP_RATES pItemRates = ((void*)0);

        pDevice->uSIFS = C_SIFS_BG;
        if (pDevice->bShortSlotTime) {
            pDevice->uSlot = C_SLOT_SHORT;
        } else {
            pDevice->uSlot = C_SLOT_LONG;
        }
        pDevice->uDIFS = C_SIFS_BG + 2*pDevice->uSlot;

        pItemRates = (PWLAN_IE_SUPP_RATES)pDevice->sMgmtObj.abyCurrSuppRates;
        for (ii = 0; ii < pItemRates->len; ii++) {
            byRate = (BYTE)(pItemRates->abyRates[ii]&0x7F);
            if (RATEwGetRateIdx(byRate) > RATE_11M) {
                bOFDMRate = TRUE;
                break;
            }
        }
        if (bOFDMRate == FALSE) {
            pItemRates = (PWLAN_IE_SUPP_RATES)pDevice->sMgmtObj.abyCurrExtSuppRates;
            for (ii = 0; ii < pItemRates->len; ii++) {
                byRate = (BYTE)(pItemRates->abyRates[ii]&0x7F);
                if (RATEwGetRateIdx(byRate) > RATE_11M) {
                    bOFDMRate = TRUE;
                    break;
                }
            }
        }
        if (bOFDMRate == TRUE) {
            pDevice->uCwMin = C_CWMIN_A;
            byMaxMin = 4;
        } else {
            pDevice->uCwMin = C_CWMIN_B;
            byMaxMin = 5;
        }
    }

    pDevice->uCwMax = C_CWMAX;
    pDevice->uEIFS = C_EIFS;

    byData[0] = (BYTE)pDevice->uSIFS;
    byData[1] = (BYTE)pDevice->uDIFS;
    byData[2] = (BYTE)pDevice->uEIFS;
    byData[3] = (BYTE)pDevice->uSlot;
    CONTROLnsRequestOut(pDevice,
                        MESSAGE_TYPE_WRITE,
                        MAC_REG_SIFS,
                        MESSAGE_REQUEST_MACREG,
                        4,
                        &byData[0]);

    byMaxMin |= 0xA0;
    CONTROLnsRequestOut(pDevice,
                        MESSAGE_TYPE_WRITE,
                        MAC_REG_CWMAXMIN0,
                        MESSAGE_REQUEST_MACREG,
                        1,
                        &byMaxMin);
}
