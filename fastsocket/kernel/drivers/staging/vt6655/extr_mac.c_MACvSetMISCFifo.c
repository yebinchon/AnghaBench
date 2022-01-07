
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef scalar_t__ DWORD_PTR ;
typedef int DWORD ;


 scalar_t__ MAC_REG_MISCFFCTL ;
 scalar_t__ MAC_REG_MISCFFDATA ;
 scalar_t__ MAC_REG_MISCFFNDEX ;
 int MISCFFCTL_WRITE ;
 int VNSvOutPortD (scalar_t__,int ) ;
 int VNSvOutPortW (scalar_t__,int) ;

void MACvSetMISCFifo (DWORD_PTR dwIoBase, WORD wOffset, DWORD dwData)
{
    if (wOffset > 273)
        return;
    VNSvOutPortW(dwIoBase + MAC_REG_MISCFFNDEX, wOffset);
    VNSvOutPortD(dwIoBase + MAC_REG_MISCFFDATA, dwData);
    VNSvOutPortW(dwIoBase + MAC_REG_MISCFFCTL, MISCFFCTL_WRITE);
}
