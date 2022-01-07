
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD_PTR ;
typedef int BYTE ;


 int SROMbWriteEmbedded (int ,int,int) ;
 int SROMbyReadEmbedded (int ,int) ;

void SROMvRegBitsOn (DWORD_PTR dwIoBase, BYTE byContntOffset, BYTE byBits)
{
    BYTE byOrgData;

    byOrgData = SROMbyReadEmbedded(dwIoBase, byContntOffset);
    SROMbWriteEmbedded(dwIoBase, byContntOffset,(BYTE)(byOrgData | byBits));
}
