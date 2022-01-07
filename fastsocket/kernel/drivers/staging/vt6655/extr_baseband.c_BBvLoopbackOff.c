
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int byBBCRc9; int byBBCR88; int byBBCR09; int byBBCR4d; scalar_t__ uConnectionRate; int PortOffset; } ;
typedef TYPE_1__* PSDevice ;
typedef int DWORD_PTR ;
typedef int BYTE ;


 int BBbReadEmbeded (int ,int,int*) ;
 int BBbWriteEmbeded (int ,int,int) ;
 scalar_t__ RATE_11M ;

void BBvLoopbackOff (PSDevice pDevice)
{
    BYTE byData;
    DWORD_PTR dwIoBase = pDevice->PortOffset;

    BBbWriteEmbeded(dwIoBase, 0xC9, pDevice->byBBCRc9);
    BBbWriteEmbeded(dwIoBase, 0x88, pDevice->byBBCR88);
    BBbWriteEmbeded(dwIoBase, 0x09, pDevice->byBBCR09);
    BBbWriteEmbeded(dwIoBase, 0x4D, pDevice->byBBCR4d);

    if (pDevice->uConnectionRate <= RATE_11M) {

        BBbReadEmbeded(dwIoBase, 0x21, &byData);
        BBbWriteEmbeded(dwIoBase, 0x21, (BYTE)(byData & 0xFE));
    }
    else {
        BBbReadEmbeded(dwIoBase, 0x9A, &byData);
        BBbWriteEmbeded(dwIoBase, 0x9A, (BYTE)(byData & 0xFE));
    }
    BBbReadEmbeded(dwIoBase, 0x0E, &byData);
    BBbWriteEmbeded(dwIoBase, 0x0E, (BYTE)(byData | 0x80));

}
