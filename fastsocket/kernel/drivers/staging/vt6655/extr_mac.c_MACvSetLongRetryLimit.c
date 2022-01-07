
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD_PTR ;
typedef int BYTE ;


 scalar_t__ MAC_REG_LRT ;
 int VNSvOutPortB (scalar_t__,int ) ;

void MACvSetLongRetryLimit (DWORD_PTR dwIoBase, BYTE byRetryLimit)
{

    VNSvOutPortB(dwIoBase + MAC_REG_LRT, byRetryLimit);
}
