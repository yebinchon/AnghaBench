
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byTmpHash ;
typedef int PBYTE ;
typedef int BYTE ;


 int CRCdwCrc32 (int ,int ,int) ;
 int U_ETHER_ADDR_LEN ;

BYTE ETHbyGetHashIndexByCrc32 (PBYTE pbyMultiAddr)
{
    int ii;
    BYTE byTmpHash;
    BYTE byHash = 0;


    byTmpHash = (BYTE)(CRCdwCrc32(pbyMultiAddr, U_ETHER_ADDR_LEN,
            0xFFFFFFFFL) & 0x3F);

    for (ii = 0; ii < (sizeof(byTmpHash) * 8); ii++) {
        byHash <<= 1;
        if (byTmpHash & 0x01)
            byHash |= 1;
        byTmpHash >>= 1;
    }


    return (byHash >> 2);
}
