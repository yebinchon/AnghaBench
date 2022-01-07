
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int byBBCRc9; int byBBCR88; int byBBCR09; int byBBCR4d; scalar_t__ wCurrentRate; } ;
typedef TYPE_1__* PSDevice ;
typedef int BYTE ;


 int ControlvReadByte (TYPE_1__*,int ,int,int*) ;
 int ControlvWriteByte (TYPE_1__*,int ,int,int) ;
 int MESSAGE_REQUEST_BBREG ;
 scalar_t__ RATE_11M ;

void BBvLoopbackOff (PSDevice pDevice)
{
    BYTE byData;

    ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0xC9, pDevice->byBBCRc9);
    ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0x88, pDevice->byBBCR88);
    ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0x09, pDevice->byBBCR09);
    ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0x4D, pDevice->byBBCR4d);

    if (pDevice->wCurrentRate <= RATE_11M) {

        ControlvReadByte (pDevice, MESSAGE_REQUEST_BBREG, 0x21, &byData);
        ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0x21, (BYTE)(byData & 0xFE));
    }
    else {
        ControlvReadByte (pDevice, MESSAGE_REQUEST_BBREG, 0x9A, &byData);
        ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0x9A, (BYTE)(byData & 0xFE));
    }
    ControlvReadByte (pDevice, MESSAGE_REQUEST_BBREG, 0x0E, &byData);
    ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0x0E, (BYTE)(byData | 0x80));

}
