
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int * PDWORD ;
typedef int PBYTE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ CRCdwGetCrc32 (int,int) ;
 int FALSE ;
 int TRUE ;
 scalar_t__ cpu_to_le32 (int ) ;

BOOL ETHbIsBufferCrc32Ok (PBYTE pbyBuffer, UINT cbFrameLength)
{
    DWORD dwCRC;

    dwCRC = CRCdwGetCrc32(pbyBuffer, cbFrameLength - 4);
    if (cpu_to_le32(*((PDWORD)(pbyBuffer + cbFrameLength - 4))) != dwCRC) {
        return FALSE;
    }
    return TRUE;
}
