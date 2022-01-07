
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PDWORD ;
typedef int * PBYTE ;
typedef int DWORD_PTR ;


 int SROMbyReadEmbedded (int ,int) ;

void SROMvReadSubSysVenId (DWORD_PTR dwIoBase, PDWORD pdwSubSysVenId)
{
    PBYTE pbyData;

    pbyData = (PBYTE)pdwSubSysVenId;

    *pbyData = SROMbyReadEmbedded(dwIoBase, 6);
    *(pbyData+1) = SROMbyReadEmbedded(dwIoBase, 7);

    *(pbyData+2) = SROMbyReadEmbedded(dwIoBase, 8);
    *(pbyData+3) = SROMbyReadEmbedded(dwIoBase, 9);
}
