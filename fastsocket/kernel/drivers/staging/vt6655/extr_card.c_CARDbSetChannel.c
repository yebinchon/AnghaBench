
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ bValid; } ;
struct TYPE_5__ {scalar_t__ byCurrentCh; scalar_t__ eCurrentPHYType; scalar_t__ byRFType; scalar_t__ bEnablePSMode; scalar_t__ byLocalID; scalar_t__ PortOffset; int byCurPwr; } ;
typedef int PVOID ;
typedef TYPE_1__* PSDevice ;
typedef scalar_t__ BYTE ;
typedef scalar_t__ BOOL ;


 int BBvSoftwareReset (scalar_t__) ;
 int CARDbSetPhyParameter (TYPE_1__*,scalar_t__,int ,int ,int *,int *) ;
 scalar_t__ CB_MAX_CHANNEL_24G ;
 scalar_t__ FALSE ;
 int MACCR_CLRNAV ;
 int MAC_REG_MACCR ;
 scalar_t__ MAC_REG_PWRCCK ;
 scalar_t__ MAC_REG_PWROFDM ;
 int MACvRegBitsOn (scalar_t__,int ,int ) ;
 int MACvSelectPage0 (scalar_t__) ;
 int MACvSelectPage1 (scalar_t__) ;
 scalar_t__ PHY_TYPE_11A ;
 scalar_t__ PHY_TYPE_11B ;
 scalar_t__ PHY_TYPE_11G ;
 int RATE_1M ;
 int RATE_6M ;
 scalar_t__ REV_ID_VT3253_B1 ;
 scalar_t__ RF_AIROHA7230 ;
 int RFbAL7230SelectChannelPostProcess (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ RFbSelectChannel (scalar_t__,scalar_t__,scalar_t__) ;
 int RFbSetPower (TYPE_1__*,int ,scalar_t__) ;
 int RFvWriteWakeProgSyn (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ TRUE ;
 int VNSvOutPortB (scalar_t__,int ) ;
 TYPE_2__* sChannelTbl ;

BOOL CARDbSetChannel (PVOID pDeviceHandler, UINT uConnectionChannel)
{
    PSDevice pDevice = (PSDevice) pDeviceHandler;
    BOOL bResult = TRUE;


    if (pDevice->byCurrentCh == uConnectionChannel) {
        return bResult;
    }

    if (sChannelTbl[uConnectionChannel].bValid == FALSE) {
        return (FALSE);
    }

    if ((uConnectionChannel > CB_MAX_CHANNEL_24G) &&
        (pDevice->eCurrentPHYType != PHY_TYPE_11A)) {
        CARDbSetPhyParameter(pDevice, PHY_TYPE_11A, 0, 0, ((void*)0), ((void*)0));
    } else if ((uConnectionChannel <= CB_MAX_CHANNEL_24G) &&
        (pDevice->eCurrentPHYType == PHY_TYPE_11A)) {
        CARDbSetPhyParameter(pDevice, PHY_TYPE_11G, 0, 0, ((void*)0), ((void*)0));
    }

    MACvRegBitsOn(pDevice->PortOffset, MAC_REG_MACCR, MACCR_CLRNAV);




    if ( pDevice->byRFType == RF_AIROHA7230 )
    {
        RFbAL7230SelectChannelPostProcess(pDevice->PortOffset, pDevice->byCurrentCh, (BYTE)uConnectionChannel);
    }



    pDevice->byCurrentCh = (BYTE)uConnectionChannel;
    bResult &= RFbSelectChannel(pDevice->PortOffset, pDevice->byRFType, (BYTE)uConnectionChannel);


    if (pDevice->bEnablePSMode == TRUE)
        RFvWriteWakeProgSyn(pDevice->PortOffset, pDevice->byRFType, uConnectionChannel);



    BBvSoftwareReset(pDevice->PortOffset);

    if (pDevice->byLocalID > REV_ID_VT3253_B1) {

        MACvSelectPage1(pDevice->PortOffset);
        RFbSetPower(pDevice, RATE_1M, pDevice->byCurrentCh);
        VNSvOutPortB(pDevice->PortOffset + MAC_REG_PWRCCK, pDevice->byCurPwr);
        RFbSetPower(pDevice, RATE_6M, pDevice->byCurrentCh);
        VNSvOutPortB(pDevice->PortOffset + MAC_REG_PWROFDM, pDevice->byCurPwr);
        MACvSelectPage0(pDevice->PortOffset);
    }

    if (pDevice->eCurrentPHYType == PHY_TYPE_11B) {



        RFbSetPower(pDevice, RATE_1M, pDevice->byCurrentCh);
    } else {



  RFbSetPower(pDevice, RATE_6M, pDevice->byCurrentCh);
    }

    return(bResult);
}
