
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t WORD ;
typedef size_t UINT ;
struct TYPE_16__ {void* wSeqCtl; scalar_t__ wDurationID; } ;
struct TYPE_15__ {scalar_t__ eCurrentPHYType; int byPreambleType; int wSeqCounter; size_t wBCNBufLen; int PortOffset; int tx_beacon_dma; scalar_t__ tx_beacon_bufs; } ;
struct TYPE_14__ {void* wTimeStampOff; void* wTransmitLength; int bySignalField; int byServiceField; void* wDuration; } ;
struct TYPE_13__ {size_t cbMPDULen; int p80211Header; } ;
struct TYPE_12__ {int wFIFOCtl; } ;
typedef int STxShortBufHead ;
typedef int STxDataHead_ab ;
typedef int PWORD ;
typedef TYPE_1__* PSTxShortBufHead ;
typedef TYPE_2__* PSTxMgmtPacket ;
typedef TYPE_3__* PSTxDataHead_ab ;
typedef TYPE_4__* PSDevice ;
typedef TYPE_5__* PS802_11Header ;
typedef size_t PBYTE ;
typedef int CMD_STATUS ;
typedef scalar_t__ BYTE ;


 int AUTO_FB_NONE ;
 int BBvCaculateParameter (TYPE_4__*,size_t,size_t,scalar_t__,int ,size_t,size_t) ;
 int CMD_STATUS_PENDING ;
 int DATADUR_A ;
 int DATADUR_B ;
 int FALSE ;
 int FIFOCTL_11B ;
 int FIFOCTL_GENINT ;
 int MAC_REG_TCR ;
 int MACvRegBitsOn (int ,int ,int ) ;
 int MACvSetCurrBCNLength (int ,size_t) ;
 int MACvSetCurrBCNTxDescAddr (int ,int ) ;
 int MACvTransmitBCN (int ) ;
 size_t MAX_RATE ;
 scalar_t__ PHY_TYPE_11A ;
 scalar_t__ PK_TYPE_11A ;
 scalar_t__ PK_TYPE_11B ;
 int PREAMBLE_LONG ;
 size_t RATE_2M ;
 size_t RATE_6M ;
 int TCR_AUTOBCNTX ;
 size_t WLAN_FCS_LEN ;
 void* cpu_to_le16 (int) ;
 int memcpy (TYPE_5__*,int ,size_t) ;
 int memset (TYPE_1__*,int ,size_t) ;
 scalar_t__ s_uGetDataDuration (TYPE_4__*,int ,size_t,scalar_t__,size_t,int ,int ,int ,int,int ) ;
 int** wTimeStampOff ;

CMD_STATUS csBeacon_xmit(PSDevice pDevice, PSTxMgmtPacket pPacket) {

    BYTE byPktType;
    PBYTE pbyBuffer = (PBYTE)pDevice->tx_beacon_bufs;
    UINT cbFrameSize = pPacket->cbMPDULen + WLAN_FCS_LEN;
    UINT cbHeaderSize = 0;
    WORD wTxBufSize = sizeof(STxShortBufHead);
    PSTxShortBufHead pTxBufHead = (PSTxShortBufHead) pbyBuffer;
    PSTxDataHead_ab pTxDataHead = (PSTxDataHead_ab) (pbyBuffer + wTxBufSize);
    PS802_11Header pMACHeader;
    WORD wCurrentRate;
    WORD wLen = 0x0000;


    memset(pTxBufHead, 0, wTxBufSize);

    if (pDevice->eCurrentPHYType == PHY_TYPE_11A) {
        wCurrentRate = RATE_6M;
        byPktType = PK_TYPE_11A;
    } else {
        wCurrentRate = RATE_2M;
        byPktType = PK_TYPE_11B;
    }


    pDevice->byPreambleType = PREAMBLE_LONG;



    pTxBufHead->wFIFOCtl |= FIFOCTL_GENINT;



    if (byPktType == PK_TYPE_11A) {
        pTxDataHead->wDuration = cpu_to_le16((WORD)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameSize, byPktType,
                                                          wCurrentRate, FALSE, 0, 0, 1, AUTO_FB_NONE));
    }
    else if (byPktType == PK_TYPE_11B) {
        pTxBufHead->wFIFOCtl |= FIFOCTL_11B;
        pTxDataHead->wDuration = cpu_to_le16((WORD)s_uGetDataDuration(pDevice, DATADUR_B, cbFrameSize, byPktType,
                                                          wCurrentRate, FALSE, 0, 0, 1, AUTO_FB_NONE));
    }

    BBvCaculateParameter(pDevice, cbFrameSize, wCurrentRate, byPktType,
        (PWORD)&(wLen), (PBYTE)&(pTxDataHead->byServiceField), (PBYTE)&(pTxDataHead->bySignalField)
    );
    pTxDataHead->wTransmitLength = cpu_to_le16(wLen);

    pTxDataHead->wTimeStampOff = cpu_to_le16(wTimeStampOff[pDevice->byPreambleType%2][wCurrentRate%MAX_RATE]);
    cbHeaderSize = wTxBufSize + sizeof(STxDataHead_ab);


    pMACHeader = (PS802_11Header)(pbyBuffer + cbHeaderSize);
    memcpy(pMACHeader, pPacket->p80211Header, pPacket->cbMPDULen);

    pMACHeader->wDurationID = 0;
    pMACHeader->wSeqCtl = cpu_to_le16(pDevice->wSeqCounter << 4);
    pDevice->wSeqCounter++ ;
    if (pDevice->wSeqCounter > 0x0fff)
        pDevice->wSeqCounter = 0;


    pDevice->wBCNBufLen = pPacket->cbMPDULen + cbHeaderSize;

    MACvSetCurrBCNTxDescAddr(pDevice->PortOffset, (pDevice->tx_beacon_dma));

    MACvSetCurrBCNLength(pDevice->PortOffset, pDevice->wBCNBufLen);

    MACvRegBitsOn(pDevice->PortOffset, MAC_REG_TCR, TCR_AUTOBCNTX);

    MACvTransmitBCN(pDevice->PortOffset);

    return CMD_STATUS_PENDING;
}
