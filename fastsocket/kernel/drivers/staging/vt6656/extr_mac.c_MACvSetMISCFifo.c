
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int PSDevice ;
typedef int DWORD ;
typedef scalar_t__ BYTE ;


 int CONTROLnsRequestOut (int ,int ,int,int ,int,scalar_t__*) ;
 int MESSAGE_TYPE_WRITE_MISCFF ;

void MACvSetMISCFifo (PSDevice pDevice, WORD wOffset, DWORD dwData)
{
BYTE pbyData[4];

    if (wOffset > 273)
        return;
    pbyData[0] = (BYTE)dwData;
    pbyData[1] = (BYTE)(dwData>>8);
    pbyData[2] = (BYTE)(dwData>>16);
    pbyData[3] = (BYTE)(dwData>>24);

    CONTROLnsRequestOut(pDevice,
                        MESSAGE_TYPE_WRITE_MISCFF,
                        wOffset,
                        0,
                        4,
                        pbyData
                        );
}
