
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef scalar_t__ DWORD_PTR ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ MAC_REG_MAR0 ;
 scalar_t__ MAC_REG_RCR ;
 int MACvSelectPage0 (scalar_t__) ;
 int MACvSelectPage1 (scalar_t__) ;
 int PKT_TYPE_ALL_MULTICAST ;
 int PKT_TYPE_BROADCAST ;
 int PKT_TYPE_DIRECTED ;
 int PKT_TYPE_ERROR_CRC ;
 int PKT_TYPE_MULTICAST ;
 int PKT_TYPE_PROMISCUOUS ;
 int RCR_BROADCAST ;
 int RCR_BSSID ;
 int RCR_ERRCRC ;
 int RCR_MULTICAST ;
 int RCR_RXALLTYPE ;
 int RCR_UNICAST ;
 int VNSvInPortB (scalar_t__,int*) ;
 int VNSvOutPortB (scalar_t__,int) ;
 int VNSvOutPortD (scalar_t__,int) ;

void MACvSetPacketFilter (DWORD_PTR dwIoBase, WORD wFilterType)
{
    BYTE byOldRCR;
    BYTE byNewRCR = 0;




    if (wFilterType & PKT_TYPE_DIRECTED) {

        MACvSelectPage1(dwIoBase);
        VNSvOutPortD(dwIoBase + MAC_REG_MAR0, 0L);
        VNSvOutPortD(dwIoBase + MAC_REG_MAR0 + sizeof(DWORD), 0L);
        MACvSelectPage0(dwIoBase);
    }

    if (wFilterType & (PKT_TYPE_PROMISCUOUS | PKT_TYPE_ALL_MULTICAST)) {

        MACvSelectPage1(dwIoBase);
        VNSvOutPortD(dwIoBase + MAC_REG_MAR0, 0xFFFFFFFFL);
        VNSvOutPortD(dwIoBase + MAC_REG_MAR0 + sizeof(DWORD), 0xFFFFFFFFL);
        MACvSelectPage0(dwIoBase);
    }

    if (wFilterType & PKT_TYPE_PROMISCUOUS) {

        byNewRCR |= (RCR_RXALLTYPE | RCR_UNICAST | RCR_MULTICAST | RCR_BROADCAST);

        byNewRCR &= ~RCR_BSSID;
    }

    if (wFilterType & (PKT_TYPE_ALL_MULTICAST | PKT_TYPE_MULTICAST))
        byNewRCR |= RCR_MULTICAST;

    if (wFilterType & PKT_TYPE_BROADCAST)
        byNewRCR |= RCR_BROADCAST;

    if (wFilterType & PKT_TYPE_ERROR_CRC)
        byNewRCR |= RCR_ERRCRC;

    VNSvInPortB(dwIoBase + MAC_REG_RCR, &byOldRCR);
    if (byNewRCR != byOldRCR) {

        VNSvOutPortB(dwIoBase + MAC_REG_RCR, byNewRCR);
    }
}
