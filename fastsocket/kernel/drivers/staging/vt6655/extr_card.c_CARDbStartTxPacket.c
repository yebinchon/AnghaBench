
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bStopBeacon; scalar_t__ bBeaconBufReady; scalar_t__ eOPMode; int PortOffset; scalar_t__ bStopDataPkt; scalar_t__ bStopTx0Pkt; } ;
typedef int PVOID ;
typedef TYPE_1__* PSDevice ;
typedef scalar_t__ CARD_PKT_TYPE ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int MAC_REG_TCR ;
 int MACvRegBitsOn (int ,int ,int ) ;
 scalar_t__ OP_MODE_ADHOC ;
 scalar_t__ PKT_TYPE_802_11_ALL ;
 scalar_t__ PKT_TYPE_802_11_BCN ;
 scalar_t__ PKT_TYPE_802_11_DATA ;
 scalar_t__ PKT_TYPE_802_11_MNG ;
 int TCR_AUTOBCNTX ;
 scalar_t__ TRUE ;

BOOL CARDbStartTxPacket (PVOID pDeviceHandler, CARD_PKT_TYPE ePktType)
{
    PSDevice pDevice = (PSDevice) pDeviceHandler;


    if (ePktType == PKT_TYPE_802_11_ALL) {
        pDevice->bStopBeacon = FALSE;
        pDevice->bStopTx0Pkt = FALSE;
        pDevice->bStopDataPkt = FALSE;
    } else if (ePktType == PKT_TYPE_802_11_BCN) {
        pDevice->bStopBeacon = FALSE;
    } else if (ePktType == PKT_TYPE_802_11_MNG) {
        pDevice->bStopTx0Pkt = FALSE;
    } else if (ePktType == PKT_TYPE_802_11_DATA) {
        pDevice->bStopDataPkt = FALSE;
    }

    if ((pDevice->bStopBeacon == FALSE) &&
        (pDevice->bBeaconBufReady == TRUE) &&
        (pDevice->eOPMode == OP_MODE_ADHOC)) {
        MACvRegBitsOn(pDevice->PortOffset, MAC_REG_TCR, TCR_AUTOBCNTX);
    }

    return(TRUE);
}
