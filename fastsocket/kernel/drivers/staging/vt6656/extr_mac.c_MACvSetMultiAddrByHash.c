
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int UINT ;
typedef int PSDevice ;
typedef int BYTE ;


 int CONTROLnsRequestOut (int ,int ,int ,int ,int,int*) ;
 scalar_t__ MAC_REG_MAR0 ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE_MASK ;

void MACvSetMultiAddrByHash (PSDevice pDevice, BYTE byHashIdx)
{
    UINT uByteIdx;
    BYTE byBitMask;
    BYTE pbyData[2];



    uByteIdx = byHashIdx / 8;


    byBitMask = 1;
    byBitMask <<= (byHashIdx % 8);


    pbyData[0] = byBitMask;
    pbyData[1] = byBitMask;

    CONTROLnsRequestOut(pDevice,
                        MESSAGE_TYPE_WRITE_MASK,
                        (WORD) (MAC_REG_MAR0 + uByteIdx),
                        MESSAGE_REQUEST_MACREG,
                        2,
                        pbyData);
}
