
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PBYTE ;
typedef int DWORD_PTR ;
typedef int BYTE ;


 int EEP_MAX_CONTEXT_SIZE ;
 int SROMbWriteEmbedded (int ,int ,int ) ;

void SROMvWriteAllContents (DWORD_PTR dwIoBase, PBYTE pbyEepromRegs)
{
    int ii;


    for (ii = 0; ii < EEP_MAX_CONTEXT_SIZE; ii++) {
        SROMbWriteEmbedded(dwIoBase,(BYTE) ii, *pbyEepromRegs);
        pbyEepromRegs++;
    }
}
