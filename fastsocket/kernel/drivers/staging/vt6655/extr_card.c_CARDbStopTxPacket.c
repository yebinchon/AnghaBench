
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bStopBeacon; scalar_t__ bStopTx0Pkt; scalar_t__ bStopDataPkt; scalar_t__ bIsBeaconBufReadySet; scalar_t__ cbBeaconBufReadySetCnt; scalar_t__* iTDUsed; int PortOffset; } ;
typedef int PVOID ;
typedef TYPE_1__* PSDevice ;
typedef scalar_t__ CARD_PKT_TYPE ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int MAC_REG_TCR ;
 int MACvRegBitsOff (int ,int ,int ) ;
 scalar_t__ PKT_TYPE_802_11_ALL ;
 scalar_t__ PKT_TYPE_802_11_BCN ;
 scalar_t__ PKT_TYPE_802_11_DATA ;
 scalar_t__ PKT_TYPE_802_11_MNG ;
 int TCR_AUTOBCNTX ;
 scalar_t__ TRUE ;
 size_t TYPE_AC0DMA ;
 size_t TYPE_TXDMA0 ;
 scalar_t__ WAIT_BEACON_TX_DOWN_TMO ;

BOOL CARDbStopTxPacket (PVOID pDeviceHandler, CARD_PKT_TYPE ePktType)
{
    PSDevice pDevice = (PSDevice) pDeviceHandler;


    if (ePktType == PKT_TYPE_802_11_ALL) {
        pDevice->bStopBeacon = TRUE;
        pDevice->bStopTx0Pkt = TRUE;
        pDevice->bStopDataPkt = TRUE;
    } else if (ePktType == PKT_TYPE_802_11_BCN) {
        pDevice->bStopBeacon = TRUE;
    } else if (ePktType == PKT_TYPE_802_11_MNG) {
        pDevice->bStopTx0Pkt = TRUE;
    } else if (ePktType == PKT_TYPE_802_11_DATA) {
        pDevice->bStopDataPkt = TRUE;
    }

    if (pDevice->bStopBeacon == TRUE) {
        if (pDevice->bIsBeaconBufReadySet == TRUE) {
            if (pDevice->cbBeaconBufReadySetCnt < WAIT_BEACON_TX_DOWN_TMO) {
                pDevice->cbBeaconBufReadySetCnt ++;
                return(FALSE);
            }
        }
        pDevice->bIsBeaconBufReadySet = FALSE;
        pDevice->cbBeaconBufReadySetCnt = 0;
        MACvRegBitsOff(pDevice->PortOffset, MAC_REG_TCR, TCR_AUTOBCNTX);
    }

    if (pDevice->bStopTx0Pkt == TRUE) {
         if (pDevice->iTDUsed[TYPE_TXDMA0] != 0){
            return(FALSE);
        }
    }

    if (pDevice->bStopDataPkt == TRUE) {
        if (pDevice->iTDUsed[TYPE_AC0DMA] != 0){
            return(FALSE);
        }
    }

    return(TRUE);
}
