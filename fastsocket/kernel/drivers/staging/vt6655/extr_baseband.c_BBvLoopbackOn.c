
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int byBBCRc9; int byBBCR4d; int byBBCR88; scalar_t__ uConnectionRate; int byBBCR09; int PortOffset; } ;
typedef TYPE_1__* PSDevice ;
typedef int DWORD_PTR ;
typedef int BYTE ;


 int BBbReadEmbeded (int ,int,int*) ;
 int BBbWriteEmbeded (int ,int,int) ;
 scalar_t__ RATE_11M ;

void BBvLoopbackOn (PSDevice pDevice)
{
    BYTE byData;
    DWORD_PTR dwIoBase = pDevice->PortOffset;


    BBbReadEmbeded(dwIoBase, 0xC9, &pDevice->byBBCRc9);
    BBbWriteEmbeded(dwIoBase, 0xC9, 0);
    BBbReadEmbeded(dwIoBase, 0x4D, &pDevice->byBBCR4d);
    BBbWriteEmbeded(dwIoBase, 0x4D, 0x90);


    BBbReadEmbeded(dwIoBase, 0x88, &pDevice->byBBCR88);

    if (pDevice->uConnectionRate <= RATE_11M) {

        BBbReadEmbeded(dwIoBase, 0x21, &byData);
        BBbWriteEmbeded(dwIoBase, 0x21, (BYTE)(byData | 0x01));

        BBbWriteEmbeded(dwIoBase, 0x9A, 0);

        BBbWriteEmbeded(dwIoBase, 0x88, 0x02);
    }
    else {

        BBbReadEmbeded(dwIoBase, 0x9A, &byData);
        BBbWriteEmbeded(dwIoBase, 0x9A, (BYTE)(byData | 0x01));

        BBbWriteEmbeded(dwIoBase, 0x21, 0);

        BBbWriteEmbeded(dwIoBase, 0x88, 0x03);
    }


    BBbWriteEmbeded(dwIoBase, 0x0E, 0);


    BBbReadEmbeded(pDevice->PortOffset, 0x09, &pDevice->byBBCR09);
    BBbWriteEmbeded(pDevice->PortOffset, 0x09, (BYTE)(pDevice->byBBCR09 & 0xDE));
}
