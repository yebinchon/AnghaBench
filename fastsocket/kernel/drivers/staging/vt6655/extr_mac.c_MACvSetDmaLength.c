
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD_PTR ;
typedef int BYTE ;


 int ASSERT (int) ;
 scalar_t__ MAC_REG_FCR0 ;
 int VNSvInPortB (scalar_t__,int*) ;
 int VNSvOutPortB (scalar_t__,int) ;

void MACvSetDmaLength (DWORD_PTR dwIoBase, BYTE byDmaLength)
{
    BYTE byOrgValue;

    ASSERT(byDmaLength < 4);


    VNSvInPortB(dwIoBase + MAC_REG_FCR0, &byOrgValue);
    byOrgValue = (byOrgValue & 0xFC) | byDmaLength;
    VNSvOutPortB(dwIoBase + MAC_REG_FCR0, byOrgValue);
}
