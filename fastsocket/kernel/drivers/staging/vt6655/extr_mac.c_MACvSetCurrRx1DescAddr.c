
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WORD ;
typedef scalar_t__ DWORD_PTR ;
typedef int DWORD ;
typedef int BYTE ;


 int DBG_PORT80 (int) ;
 int DMACTL_RUN ;
 scalar_t__ MAC_REG_RXDMACTL1 ;
 scalar_t__ MAC_REG_RXDMAPTR1 ;
 int VNSvInPortB (scalar_t__,int*) ;
 int VNSvOutPortB (scalar_t__,int) ;
 int VNSvOutPortD (scalar_t__,int ) ;
 scalar_t__ W_MAX_TIMEOUT ;

void MACvSetCurrRx1DescAddr (DWORD_PTR dwIoBase, DWORD dwCurrDescAddr)
{
WORD ww;
BYTE byData;
BYTE byOrgDMACtl;

    VNSvInPortB(dwIoBase + MAC_REG_RXDMACTL1, &byOrgDMACtl);
    if (byOrgDMACtl & DMACTL_RUN) {
        VNSvOutPortB(dwIoBase + MAC_REG_RXDMACTL1+2, DMACTL_RUN);
    }
    for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
        VNSvInPortB(dwIoBase + MAC_REG_RXDMACTL1, &byData);
        if ( !(byData & DMACTL_RUN))
            break;
    }
    if (ww == W_MAX_TIMEOUT) {
        DBG_PORT80(0x14);
    }
    VNSvOutPortD(dwIoBase + MAC_REG_RXDMAPTR1, dwCurrDescAddr);
    if (byOrgDMACtl & DMACTL_RUN) {
        VNSvOutPortB(dwIoBase + MAC_REG_RXDMACTL1, DMACTL_RUN);
    }
}
