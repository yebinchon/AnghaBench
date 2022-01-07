
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int PVOID ;
typedef int PSDevice ;
typedef scalar_t__ BYTE ;


 int BBvCaculateParameter (int ,int,int ,int ,int*,scalar_t__*,scalar_t__*) ;
 int CARDvCaculateOFDMRParameter (int ,scalar_t__,scalar_t__*,scalar_t__*) ;
 int CONTROLnsRequestOut (int ,int ,int ,int ,int,scalar_t__*) ;
 int MAC_REG_RSPINF_B_1 ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE ;
 int PK_TYPE_11B ;
 int RATE_11M ;
 int RATE_12M ;
 int RATE_18M ;
 int RATE_1M ;
 int RATE_24M ;
 int RATE_2M ;
 int RATE_36M ;
 int RATE_48M ;
 int RATE_54M ;
 int RATE_5M ;
 int RATE_6M ;
 int RATE_9M ;
 int swGetCCKControlRate (int ,int ) ;
 int swGetOFDMControlRate (int ,int ) ;

void CARDvSetRSPINF (PVOID pDeviceHandler, BYTE byBBType)
{
    PSDevice pDevice = (PSDevice) pDeviceHandler;
    BYTE abyServ[4] = {0,0,0,0};
    BYTE abySignal[4] = {0,0,0,0};
    WORD awLen[4] = {0,0,0,0};
    BYTE abyTxRate[9] = {0,0,0,0,0,0,0,0,0};
    BYTE abyRsvTime[9] = {0,0,0,0,0,0,0,0,0};
    BYTE abyData[34];
    int i;


    BBvCaculateParameter(pDevice,
                         14,
                         swGetCCKControlRate(pDevice, RATE_1M),
                         PK_TYPE_11B,
                         &awLen[0],
                         &abyServ[0],
                         &abySignal[0]
    );


    BBvCaculateParameter(pDevice,
                         14,
                         swGetCCKControlRate(pDevice, RATE_2M),
                         PK_TYPE_11B,
                         &awLen[1],
                         &abyServ[1],
                         &abySignal[1]
    );


    BBvCaculateParameter(pDevice,
                         14,
                         swGetCCKControlRate(pDevice, RATE_5M),
                         PK_TYPE_11B,
                         &awLen[2],
                         &abyServ[2],
                         &abySignal[2]
    );


    BBvCaculateParameter(pDevice,
                         14,
                         swGetCCKControlRate(pDevice, RATE_11M),
                         PK_TYPE_11B,
                         &awLen[3],
                         &abyServ[3],
                         &abySignal[3]
    );


    CARDvCaculateOFDMRParameter (RATE_6M,
                                 byBBType,
                                 &abyTxRate[0],
                                 &abyRsvTime[0]);


    CARDvCaculateOFDMRParameter (RATE_9M,
                                 byBBType,
                                 &abyTxRate[1],
                                 &abyRsvTime[1]);


    CARDvCaculateOFDMRParameter (RATE_12M,
                                 byBBType,
                                 &abyTxRate[2],
                                 &abyRsvTime[2]);


    CARDvCaculateOFDMRParameter (RATE_18M,
                                 byBBType,
                                 &abyTxRate[3],
                                 &abyRsvTime[3]);


    CARDvCaculateOFDMRParameter (RATE_24M,
                                 byBBType,
                                 &abyTxRate[4],
                                 &abyRsvTime[4]);


    CARDvCaculateOFDMRParameter (swGetOFDMControlRate(pDevice, RATE_36M),
                                 byBBType,
                                 &abyTxRate[5],
                                 &abyRsvTime[5]);


    CARDvCaculateOFDMRParameter (swGetOFDMControlRate(pDevice, RATE_48M),
                                 byBBType,
                                 &abyTxRate[6],
                                 &abyRsvTime[6]);


    CARDvCaculateOFDMRParameter (swGetOFDMControlRate(pDevice, RATE_54M),
                                 byBBType,
                                 &abyTxRate[7],
                                 &abyRsvTime[7]);


    CARDvCaculateOFDMRParameter (swGetOFDMControlRate(pDevice, RATE_54M),
                                 byBBType,
                                 &abyTxRate[8],
                                 &abyRsvTime[8]);

    abyData[0] = (BYTE)(awLen[0]&0xFF);
    abyData[1] = (BYTE)(awLen[0]>>8);
    abyData[2] = abySignal[0];
    abyData[3] = abyServ[0];

    abyData[4] = (BYTE)(awLen[1]&0xFF);
    abyData[5] = (BYTE)(awLen[1]>>8);
    abyData[6] = abySignal[1];
    abyData[7] = abyServ[1];

    abyData[8] = (BYTE)(awLen[2]&0xFF);
    abyData[9] = (BYTE)(awLen[2]>>8);
    abyData[10] = abySignal[2];
    abyData[11] = abyServ[2];

    abyData[12] = (BYTE)(awLen[3]&0xFF);
    abyData[13] = (BYTE)(awLen[3]>>8);
    abyData[14] = abySignal[3];
    abyData[15] = abyServ[3];

    for(i=0;i<9;i++) {
        abyData[16+i*2] = abyTxRate[i];
        abyData[16+i*2+1] = abyRsvTime[i];
    }


    CONTROLnsRequestOut(pDevice,
                        MESSAGE_TYPE_WRITE,
                        MAC_REG_RSPINF_B_1,
                        MESSAGE_REQUEST_MACREG,
                        34,
                        &abyData[0]);

}
