
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef scalar_t__ DWORD_PTR ;


 scalar_t__ MAC_REG_TMCTL0 ;
 scalar_t__ MAC_REG_TMDATA0 ;
 int TMCTL_TE ;
 int TMCTL_TMD ;
 int VNSvOutPortB (scalar_t__,int) ;
 int VNSvOutPortD (scalar_t__,int ) ;

void MACvOneShotTimer0MicroSec (DWORD_PTR dwIoBase, UINT uDelayTime)
{
    VNSvOutPortB(dwIoBase + MAC_REG_TMCTL0, 0);
    VNSvOutPortD(dwIoBase + MAC_REG_TMDATA0, uDelayTime);
    VNSvOutPortB(dwIoBase + MAC_REG_TMCTL0, (TMCTL_TMD | TMCTL_TE));
}
