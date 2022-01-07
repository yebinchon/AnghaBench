
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int PSDevice ;
typedef scalar_t__ BYTE ;


 int CONTROLnsRequestOut (int ,int ,scalar_t__,int ,int,scalar_t__*) ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE ;

void MACvWriteWord(PSDevice pDevice, BYTE byRegOfs, WORD wData)
{
BYTE pbyData[2];


    pbyData[0] = (BYTE)(wData & 0xff);
    pbyData[1] = (BYTE)(wData >> 8);

    CONTROLnsRequestOut(pDevice,
                        MESSAGE_TYPE_WRITE,
                        byRegOfs,
                        MESSAGE_REQUEST_MACREG,
                        2,
                        pbyData
                        );

}
