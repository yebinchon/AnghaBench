
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int DWORD_PTR ;
typedef int BYTE ;


 int ASSERT (int) ;
 int MACbyReadMultiAddr (int ,int) ;
 int MACvWriteMultiAddr (int ,int,int) ;

void MACvSetMultiAddrByHash (DWORD_PTR dwIoBase, BYTE byHashIdx)
{
    UINT uByteIdx;
    BYTE byBitMask;
    BYTE byOrgValue;


    uByteIdx = byHashIdx / 8;
    ASSERT(uByteIdx < 8);

    byBitMask = 1;
    byBitMask <<= (byHashIdx % 8);

    byOrgValue = MACbyReadMultiAddr(dwIoBase, uByteIdx);
    MACvWriteMultiAddr(dwIoBase, uByteIdx, (BYTE)(byOrgValue | byBitMask));
}
