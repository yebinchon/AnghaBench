
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PSDevice ;
typedef scalar_t__ BYTE ;


 int CONTROLnsRequestOut (int ,int ,int ,int ,int,scalar_t__*) ;
 scalar_t__ EnCFG_ProtectMd ;
 int MAC_REG_ENCFG0 ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE_MASK ;

void MACvDisableProtectMD(PSDevice pDevice)
{
BYTE pbyData[2];


    pbyData[0] = 0;
    pbyData[1] = EnCFG_ProtectMd;

    CONTROLnsRequestOut(pDevice,
                        MESSAGE_TYPE_WRITE_MASK,
                        MAC_REG_ENCFG0,
                        MESSAGE_REQUEST_MACREG,
                        2,
                        pbyData
                        );
}
