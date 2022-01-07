
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PBYTE ;
typedef scalar_t__ DWORD_PTR ;


 scalar_t__ MAC_REG_FCR0 ;
 int VNSvInPortB (scalar_t__,int*) ;

void MACvGetRxThreshold (DWORD_PTR dwIoBase, PBYTE pbyThreshold)
{

    VNSvInPortB(dwIoBase + MAC_REG_FCR0, pbyThreshold);
    *pbyThreshold = (*pbyThreshold >> 4) & 0x03;
}
