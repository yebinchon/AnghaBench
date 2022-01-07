
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef scalar_t__ DWORD_PTR ;
typedef int BYTE ;


 scalar_t__ MAC_REG_MAR0 ;
 int MACvSelectPage0 (scalar_t__) ;
 int MACvSelectPage1 (scalar_t__) ;
 int VNSvInPortB (scalar_t__,int *) ;

BYTE MACbyReadMultiAddr (DWORD_PTR dwIoBase, UINT uByteIdx)
{
    BYTE byData;

    MACvSelectPage1(dwIoBase);
    VNSvInPortB(dwIoBase + MAC_REG_MAR0 + uByteIdx, &byData);
    MACvSelectPage0(dwIoBase);
    return byData;
}
