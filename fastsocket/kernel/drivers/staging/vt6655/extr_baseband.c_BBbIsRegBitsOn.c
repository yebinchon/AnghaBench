
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD_PTR ;
typedef int BYTE ;
typedef int BOOL ;


 int BBbReadEmbeded (int ,int,int*) ;

BOOL BBbIsRegBitsOn (DWORD_PTR dwIoBase, BYTE byBBAddr, BYTE byTestBits)
{
    BYTE byOrgData;

    BBbReadEmbeded(dwIoBase, byBBAddr, &byOrgData);
    return (byOrgData & byTestBits) == byTestBits;
}
