
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int WORD ;
typedef int UINT ;
struct TYPE_7__ {scalar_t__ byBBType; int byCurPwr; int * abyCCKPwrTbl; int * abyOFDMPwrTbl; int * abyOFDMAPwrTbl; } ;
typedef int PVOID ;
typedef TYPE_1__* PSDevice ;
typedef int BYTE ;
typedef int BOOL ;


 scalar_t__ BB_TYPE_11A ;
 scalar_t__ BB_TYPE_11G ;
 int CB_MAX_CHANNEL ;
 int CB_MAX_CHANNEL_24G ;
 int CONTROLnsRequestOut (TYPE_1__*,int ,int ,int ,int ,int *) ;
 int ControlvWriteByte (TYPE_1__*,int ,int ,int ) ;
 int MACCR_CLRNAV ;
 int MAC_REG_CHANNEL ;
 int MAC_REG_MACCR ;
 int MACvRegBitsOff (TYPE_1__*,int ,int) ;
 int MACvRegBitsOn (TYPE_1__*,int ,int ) ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_SELECT_CHANNLE ;
 int RATE_1M ;
 int RATE_54M ;
 int RFbRawSetPower (TYPE_1__*,int ,int ) ;
 int TRUE ;

BOOL CARDbSetMediaChannel (PVOID pDeviceHandler, UINT uConnectionChannel)
{
PSDevice pDevice = (PSDevice) pDeviceHandler;
BOOL bResult = TRUE;


    if (pDevice->byBBType == BB_TYPE_11A) {
        if ((uConnectionChannel < (CB_MAX_CHANNEL_24G+1)) || (uConnectionChannel > CB_MAX_CHANNEL))
            uConnectionChannel = (CB_MAX_CHANNEL_24G+1);
    } else {
        if ((uConnectionChannel > CB_MAX_CHANNEL_24G) || (uConnectionChannel == 0))
            uConnectionChannel = 1;
    }


    MACvRegBitsOn(pDevice, MAC_REG_MACCR, MACCR_CLRNAV);


    MACvRegBitsOff(pDevice, MAC_REG_CHANNEL, 0x80);




    CONTROLnsRequestOut(pDevice,
                        MESSAGE_TYPE_SELECT_CHANNLE,
                        (WORD) uConnectionChannel,
                        0,
                        0,
                        ((void*)0)
                        );




    if (pDevice->byBBType == BB_TYPE_11A) {
        pDevice->byCurPwr = 0xFF;
        RFbRawSetPower(pDevice, pDevice->abyOFDMAPwrTbl[uConnectionChannel-15], RATE_54M);
    } else if (pDevice->byBBType == BB_TYPE_11G) {
        pDevice->byCurPwr = 0xFF;
        RFbRawSetPower(pDevice, pDevice->abyOFDMPwrTbl[uConnectionChannel-1], RATE_54M);
    } else {
        pDevice->byCurPwr = 0xFF;
        RFbRawSetPower(pDevice, pDevice->abyCCKPwrTbl[uConnectionChannel-1], RATE_1M);
    }
    ControlvWriteByte(pDevice,MESSAGE_REQUEST_MACREG,MAC_REG_CHANNEL,(BYTE)(uConnectionChannel|0x80));
    return(bResult);
}
