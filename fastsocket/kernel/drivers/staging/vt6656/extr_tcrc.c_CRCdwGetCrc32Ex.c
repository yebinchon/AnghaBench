
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PBYTE ;
typedef int DWORD ;


 int CRCdwCrc32 (int ,int ,int ) ;

DWORD CRCdwGetCrc32Ex(PBYTE pbyData, UINT cbByte, DWORD dwPreCRC)
{
    return CRCdwCrc32(pbyData, cbByte, dwPreCRC);
}
