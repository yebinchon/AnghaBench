
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PSDevice ;
typedef int * PBYTE ;
typedef int BYTE ;


 int CONTROLnsRequestOut (int ,int ,int ,int ,int,int *) ;
 int MAC_REG_BSSID0 ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE ;

void MACvWriteBSSIDAddress(PSDevice pDevice, PBYTE pbyEtherAddr)
{
BYTE pbyData[6];


    pbyData[0] = *((PBYTE)pbyEtherAddr);
    pbyData[1] = *((PBYTE)pbyEtherAddr+1);
    pbyData[2] = *((PBYTE)pbyEtherAddr+2);
    pbyData[3] = *((PBYTE)pbyEtherAddr+3);
    pbyData[4] = *((PBYTE)pbyEtherAddr+4);
    pbyData[5] = *((PBYTE)pbyEtherAddr+5);

    CONTROLnsRequestOut(pDevice,
                        MESSAGE_TYPE_WRITE,
                        MAC_REG_BSSID0,
                        MESSAGE_REQUEST_MACREG,
                        6,
                        pbyData
                        );
}
