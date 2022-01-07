
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PSDevice ;
typedef int BYTE ;


 int CONTROLnsRequestOut (int ,int ,int ,int ,int,int *) ;
 int MESSAGE_TYPE_WRITE_MASK ;

void ControlvMaskByte(PSDevice pDevice, BYTE byRegType, BYTE byRegOfs, BYTE byMask, BYTE byData)
{
BYTE pbyData[2];

    pbyData[0] = byData;
    pbyData[1] = byMask;

    CONTROLnsRequestOut(pDevice,
                        MESSAGE_TYPE_WRITE_MASK,
                        byRegOfs,
                        byRegType,
                        2,
                        pbyData
                        );

}
