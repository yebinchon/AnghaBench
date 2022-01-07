
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int PSDevice ;
typedef scalar_t__ BYTE ;


 int CONTROLnsRequestOut (int ,int ,int ,int ,int,scalar_t__*) ;
 int MAC_REG_BI ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE ;

void MACvWriteBeaconInterval(PSDevice pDevice, WORD wInterval)
{
BYTE pbyData[2];

    pbyData[0] = (BYTE) (wInterval & 0xff);
    pbyData[1] = (BYTE) (wInterval >> 8);

    CONTROLnsRequestOut(pDevice,
                        MESSAGE_TYPE_WRITE,
                        MAC_REG_BI,
                        MESSAGE_REQUEST_MACREG,
                        2,
                        pbyData
                        );
}
