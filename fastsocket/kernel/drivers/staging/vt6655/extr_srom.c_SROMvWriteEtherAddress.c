
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PBYTE ;
typedef int DWORD_PTR ;
typedef scalar_t__ BYTE ;


 int SROMbWriteEmbedded (int ,scalar_t__,int ) ;
 scalar_t__ U_ETHER_ADDR_LEN ;

void SROMvWriteEtherAddress (DWORD_PTR dwIoBase, PBYTE pbyEtherAddress)
{
    BYTE ii;


    for (ii = 0; ii < U_ETHER_ADDR_LEN; ii++) {
        SROMbWriteEmbedded(dwIoBase, ii, *pbyEtherAddress);
        pbyEtherAddress++;
    }
}
