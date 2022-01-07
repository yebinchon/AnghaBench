
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int WLAN_FRAME_TPCREP ;
struct TYPE_20__ {int pAdapter; scalar_t__ abyCurrentMSRReq; int abyCurrBSSID; scalar_t__ pbyMgmtPacketPool; } ;
struct TYPE_19__ {int cbMPDULen; scalar_t__ cbPayloadLen; scalar_t__ p80211Header; } ;
struct TYPE_18__ {int byDialogToken; } ;
struct TYPE_15__ {int len; int byLinkMargin; int byTxPower; int byElementID; } ;
struct TYPE_14__ {int wFrameCtl; int abyAddr3; int abyAddr2; int abyAddr1; } ;
struct TYPE_17__ {int byAction; TYPE_3__ sTPCRepEIDs; int byDialogToken; scalar_t__ byCategory; TYPE_2__ Header; } ;
struct TYPE_13__ {int abyAddr2; } ;
struct TYPE_16__ {TYPE_1__ Header; } ;
typedef int STxMgmtPacket ;
typedef TYPE_4__* PWLAN_FRAME_TPCREQ ;
typedef TYPE_5__* PWLAN_FRAME_TPCREP ;
typedef TYPE_6__* PWLAN_FRAME_MSRREQ ;
typedef scalar_t__ PUWLAN_80211HDR ;
typedef TYPE_7__* PSTxMgmtPacket ;
typedef TYPE_8__* PSMgmtObject ;
typedef scalar_t__ PBYTE ;
typedef int BYTE ;
typedef int BOOL ;


 int CARDbyGetTransmitPower (int ) ;
 int CARDpGetCurrentAddress (int ) ;
 scalar_t__ CMD_STATUS_PENDING ;
 int FALSE ;
 int TRUE ;
 scalar_t__ WLAN_A3FR_MAXLEN ;
 int WLAN_ADDR_LEN ;
 int WLAN_BSSID_LEN ;
 int WLAN_EID_TPC_REP ;
 int WLAN_FSTYPE_ACTION ;
 int WLAN_FTYPE_MGMT ;
 scalar_t__ WLAN_HDR_ADDR3_LEN ;
 int WLAN_SET_FC_FSTYPE (int ) ;
 int WLAN_SET_FC_FTYPE (int ) ;
 scalar_t__ csMgmt_xmit (int ,TYPE_7__*) ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_7__*,int ,scalar_t__) ;

__attribute__((used)) static BOOL s_bRxTPCReq(PSMgmtObject pMgmt, PWLAN_FRAME_TPCREQ pTPCReq, BYTE byRate, BYTE byRSSI)
{
    PWLAN_FRAME_TPCREP pFrame;
    PSTxMgmtPacket pTxPacket = ((void*)0);


    pTxPacket = (PSTxMgmtPacket)pMgmt->pbyMgmtPacketPool;
    memset(pTxPacket, 0, sizeof(STxMgmtPacket) + WLAN_A3FR_MAXLEN);
    pTxPacket->p80211Header = (PUWLAN_80211HDR)((PBYTE)pTxPacket + sizeof(STxMgmtPacket));

    pFrame = (PWLAN_FRAME_TPCREP)((PBYTE)pTxPacket + sizeof(STxMgmtPacket));

    pFrame->Header.wFrameCtl = ( WLAN_SET_FC_FTYPE(WLAN_FTYPE_MGMT) |
                                    WLAN_SET_FC_FSTYPE(WLAN_FSTYPE_ACTION)
                                );

    memcpy( pFrame->Header.abyAddr1, pTPCReq->Header.abyAddr2, WLAN_ADDR_LEN);
    memcpy( pFrame->Header.abyAddr2, CARDpGetCurrentAddress(pMgmt->pAdapter), WLAN_ADDR_LEN);
    memcpy( pFrame->Header.abyAddr3, pMgmt->abyCurrBSSID, WLAN_BSSID_LEN);

    pFrame->byCategory = 0;
    pFrame->byAction = 3;
    pFrame->byDialogToken = ((PWLAN_FRAME_MSRREQ) (pMgmt->abyCurrentMSRReq))->byDialogToken;

    pFrame->sTPCRepEIDs.byElementID = WLAN_EID_TPC_REP;
    pFrame->sTPCRepEIDs.len = 2;
    pFrame->sTPCRepEIDs.byTxPower = CARDbyGetTransmitPower(pMgmt->pAdapter);
    switch (byRate) {
        case 130:
            pFrame->sTPCRepEIDs.byLinkMargin = 65 - byRSSI;
            break;
        case 131:
            pFrame->sTPCRepEIDs.byLinkMargin = 66 - byRSSI;
            break;
        case 132:
            pFrame->sTPCRepEIDs.byLinkMargin = 70 - byRSSI;
            break;
        case 133:
            pFrame->sTPCRepEIDs.byLinkMargin = 74 - byRSSI;
            break;
        case 134:
            pFrame->sTPCRepEIDs.byLinkMargin = 77 - byRSSI;
            break;
        case 135:
            pFrame->sTPCRepEIDs.byLinkMargin = 79 - byRSSI;
            break;
        case 128:
            pFrame->sTPCRepEIDs.byLinkMargin = 81 - byRSSI;
            break;
        case 129:
        default:
            pFrame->sTPCRepEIDs.byLinkMargin = 82 - byRSSI;
            break;
    }

    pTxPacket->cbMPDULen = sizeof(WLAN_FRAME_TPCREP);
    pTxPacket->cbPayloadLen = sizeof(WLAN_FRAME_TPCREP) - WLAN_HDR_ADDR3_LEN;
    if (csMgmt_xmit(pMgmt->pAdapter, pTxPacket) != CMD_STATUS_PENDING)
        return (FALSE);
    return (TRUE);


}
