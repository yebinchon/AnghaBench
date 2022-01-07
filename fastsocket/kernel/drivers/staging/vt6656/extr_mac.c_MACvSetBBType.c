
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PSDevice ;
typedef int BYTE ;


 int CONTROLnsRequestOut (int ,int ,int ,int ,int,int *) ;
 int EnCFG_BBType_MASK ;
 int MAC_REG_ENCFG0 ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE_MASK ;

void MACvSetBBType(PSDevice pDevice,BYTE byType)
{
BYTE pbyData[2];


    pbyData[0] = byType;
    pbyData[1] = EnCFG_BBType_MASK;

    CONTROLnsRequestOut(pDevice,
                        MESSAGE_TYPE_WRITE_MASK,
                        MAC_REG_ENCFG0,
                        MESSAGE_REQUEST_MACREG,
                        2,
                        pbyData
                        );
}
