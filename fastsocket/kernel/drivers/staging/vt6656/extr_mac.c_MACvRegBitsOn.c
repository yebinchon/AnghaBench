
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PSDevice ;
typedef int BYTE ;


 int CONTROLnsRequestOut (int ,int ,int ,int ,int,int *) ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE_MASK ;

void MACvRegBitsOn(PSDevice pDevice, BYTE byRegOfs, BYTE byBits)
{
BYTE pbyData[2];


    pbyData[0] = byBits;
    pbyData[1] = byBits;

    CONTROLnsRequestOut(pDevice,
                        MESSAGE_TYPE_WRITE_MASK,
                        byRegOfs,
                        MESSAGE_REQUEST_MACREG,
                        2,
                        pbyData
                        );
}
