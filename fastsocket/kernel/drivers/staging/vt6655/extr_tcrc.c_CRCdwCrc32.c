
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int* PBYTE ;
typedef int DWORD ;
typedef size_t BYTE ;


 int* s_adwCrc32Table ;

DWORD CRCdwCrc32 (PBYTE pbyData, UINT cbByte, DWORD dwCrcSeed)
{
    DWORD dwCrc;

    dwCrc = dwCrcSeed;
    while (cbByte--) {
        dwCrc = s_adwCrc32Table[(BYTE)((dwCrc ^ (*pbyData)) & 0xFF)] ^ (dwCrc >> 8);
        pbyData++;
    }

    return dwCrc;
}
