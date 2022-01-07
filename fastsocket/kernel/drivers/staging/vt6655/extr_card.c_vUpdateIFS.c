
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ byPacketType; int uSlot; int uSIFS; int uDIFS; int wBasicRate; scalar_t__ byRFType; scalar_t__ PortOffset; scalar_t__ uEIFS; int uCwMax; void* uCwMin; scalar_t__ bShortSlotTime; } ;
typedef int PVOID ;
typedef TYPE_1__* PSDevice ;
typedef int BYTE ;


 int C_CWMAX ;
 void* C_CWMIN_A ;
 void* C_CWMIN_B ;
 scalar_t__ C_EIFS ;
 void* C_SIFS_A ;
 void* C_SIFS_BG ;
 int C_SLOT_LONG ;
 int C_SLOT_SHORT ;
 scalar_t__ MAC_REG_CWMAXMIN0 ;
 scalar_t__ MAC_REG_DIFS ;
 scalar_t__ MAC_REG_EIFS ;
 scalar_t__ MAC_REG_SIFS ;
 scalar_t__ MAC_REG_SLOT ;
 scalar_t__ PK_TYPE_11A ;
 scalar_t__ PK_TYPE_11B ;
 scalar_t__ RF_RFMD2959 ;
 int VNSvOutPortB (scalar_t__,int) ;

void vUpdateIFS (PVOID pDeviceHandler)
{

    PSDevice pDevice = (PSDevice) pDeviceHandler;

    BYTE byMaxMin = 0;
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
        pDevice->uSIFS = C_SIFS_BG;
        if (pDevice->bShortSlotTime) {
            pDevice->uSlot = C_SLOT_SHORT;
        } else {
         pDevice->uSlot = C_SLOT_LONG;
     }
     pDevice->uDIFS = C_SIFS_BG + 2*pDevice->uSlot;
        if (pDevice->wBasicRate & 0x0150) {
            pDevice->uCwMin = C_CWMIN_A;
            byMaxMin = 4;
        }
        else {
            pDevice->uCwMin = C_CWMIN_B;
            byMaxMin = 5;
        }
    }

    pDevice->uCwMax = C_CWMAX;
    pDevice->uEIFS = C_EIFS;
    if (pDevice->byRFType == RF_RFMD2959) {

        VNSvOutPortB(pDevice->PortOffset + MAC_REG_SIFS, (BYTE)(pDevice->uSIFS - 3));
        VNSvOutPortB(pDevice->PortOffset + MAC_REG_DIFS, (BYTE)(pDevice->uDIFS - 3));
    } else {
        VNSvOutPortB(pDevice->PortOffset + MAC_REG_SIFS, (BYTE)pDevice->uSIFS);
        VNSvOutPortB(pDevice->PortOffset + MAC_REG_DIFS, (BYTE)pDevice->uDIFS);
    }
    VNSvOutPortB(pDevice->PortOffset + MAC_REG_EIFS, (BYTE)pDevice->uEIFS);
    VNSvOutPortB(pDevice->PortOffset + MAC_REG_SLOT, (BYTE)pDevice->uSlot);
    byMaxMin |= 0xA0;
    VNSvOutPortB(pDevice->PortOffset + MAC_REG_CWMAXMIN0, (BYTE)byMaxMin);
}
