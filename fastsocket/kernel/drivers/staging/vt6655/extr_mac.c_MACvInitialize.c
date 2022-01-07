
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD_PTR ;


 scalar_t__ MAC_REG_PMC1 ;
 scalar_t__ MAC_REG_TFTCTL ;
 int MACbSoftwareReset (scalar_t__) ;
 int MACvClearStckDS (scalar_t__) ;
 int MACvSetPacketFilter (scalar_t__,int) ;
 int PKT_TYPE_BROADCAST ;
 int PKT_TYPE_DIRECTED ;
 int PME_OVR ;
 int TFTCTL_TSFCNTREN ;
 int TFTCTL_TSFCNTRST ;
 int VNSvOutPortB (scalar_t__,int ) ;

void MACvInitialize (DWORD_PTR dwIoBase)
{

    MACvClearStckDS(dwIoBase);

    VNSvOutPortB(dwIoBase + MAC_REG_PMC1, PME_OVR);
    MACbSoftwareReset(dwIoBase);
    VNSvOutPortB(dwIoBase + MAC_REG_TFTCTL, TFTCTL_TSFCNTRST);

    VNSvOutPortB(dwIoBase + MAC_REG_TFTCTL, TFTCTL_TSFCNTREN);





    MACvSetPacketFilter(dwIoBase, PKT_TYPE_DIRECTED | PKT_TYPE_BROADCAST);

}
