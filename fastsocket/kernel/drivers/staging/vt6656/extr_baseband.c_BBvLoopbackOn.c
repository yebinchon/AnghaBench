
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int byBBCRc9; int byBBCR4d; int byBBCR88; scalar_t__ wCurrentRate; int byBBCR09; } ;
typedef TYPE_1__* PSDevice ;
typedef int BYTE ;


 int ControlvReadByte (TYPE_1__*,int ,int,int*) ;
 int ControlvWriteByte (TYPE_1__*,int ,int,int) ;
 int MESSAGE_REQUEST_BBREG ;
 scalar_t__ RATE_11M ;

void BBvLoopbackOn (PSDevice pDevice)
{
    BYTE byData;


    ControlvReadByte (pDevice, MESSAGE_REQUEST_BBREG, 0xC9, &pDevice->byBBCRc9);
    ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0xC9, 0);
    ControlvReadByte (pDevice, MESSAGE_REQUEST_BBREG, 0x4D, &pDevice->byBBCR4d);
    ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0x4D, 0x90);


    ControlvReadByte (pDevice, MESSAGE_REQUEST_BBREG, 0x88, &pDevice->byBBCR88);

    if (pDevice->wCurrentRate <= RATE_11M) {

        ControlvReadByte (pDevice, MESSAGE_REQUEST_BBREG, 0x21, &byData);
        ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0x21, (BYTE)(byData | 0x01));

        ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0x9A, 0);

        ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0x88, 0x02);
    }
    else {

        ControlvReadByte (pDevice, MESSAGE_REQUEST_BBREG, 0x9A, &byData);
        ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0x9A, (BYTE)(byData | 0x01));

        ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0x21, 0);

        ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0x88, 0x03);
    }


    ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0x0E, 0);


    ControlvReadByte (pDevice, MESSAGE_REQUEST_BBREG, 0x09, &pDevice->byBBCR09);
    ControlvWriteByte(pDevice, MESSAGE_REQUEST_BBREG, 0x09, (BYTE)(pDevice->byBBCR09 & 0xDE));
}
