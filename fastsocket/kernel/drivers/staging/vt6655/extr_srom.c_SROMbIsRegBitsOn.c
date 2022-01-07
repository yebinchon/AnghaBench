
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD_PTR ;
typedef int BYTE ;
typedef int BOOL ;


 int SROMbyReadEmbedded (int ,int) ;

BOOL SROMbIsRegBitsOn (DWORD_PTR dwIoBase, BYTE byContntOffset, BYTE byTestBits)
{
    BYTE byOrgData;

    byOrgData = SROMbyReadEmbedded(dwIoBase, byContntOffset);
    return (byOrgData & byTestBits) == byTestBits;
}
