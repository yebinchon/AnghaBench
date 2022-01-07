
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD_PTR ;
typedef int BYTE ;


 int ASSERT (int) ;
 scalar_t__ MAC_REG_TEST ;
 int VNSvInPortB (scalar_t__,int*) ;
 int VNSvOutPortB (scalar_t__,int) ;

void MACvSetLoopbackMode (DWORD_PTR dwIoBase, BYTE byLoopbackMode)
{
    BYTE byOrgValue;

    ASSERT(byLoopbackMode < 3);
    byLoopbackMode <<= 6;

    VNSvInPortB(dwIoBase + MAC_REG_TEST, &byOrgValue);
    byOrgValue = byOrgValue & 0x3F;
    byOrgValue = byOrgValue | byLoopbackMode;
    VNSvOutPortB(dwIoBase + MAC_REG_TEST, byOrgValue);
}
