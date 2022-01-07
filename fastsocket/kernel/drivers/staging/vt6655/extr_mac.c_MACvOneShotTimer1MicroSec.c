
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef scalar_t__ DWORD_PTR ;


 scalar_t__ MAC_REG_TMCTL1 ;
 scalar_t__ MAC_REG_TMDATA1 ;
 int TMCTL_TE ;
 int TMCTL_TMD ;
 int VNSvOutPortB (scalar_t__,int) ;
 int VNSvOutPortD (scalar_t__,int ) ;

void MACvOneShotTimer1MicroSec (DWORD_PTR dwIoBase, UINT uDelayTime)
{
    VNSvOutPortB(dwIoBase + MAC_REG_TMCTL1, 0);
    VNSvOutPortD(dwIoBase + MAC_REG_TMDATA1, uDelayTime);
    VNSvOutPortB(dwIoBase + MAC_REG_TMCTL1, (TMCTL_TMD | TMCTL_TE));
}
