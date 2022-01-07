
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD_PTR ;
typedef int BYTE ;
typedef int BOOL ;


 int IFRFbWriteEmbeded (scalar_t__,int ) ;
 scalar_t__ MAC_REG_CHANNEL ;
 int MAC_REG_SOFTPWRCTL ;
 int MACvTimer0MicroSDelay (scalar_t__,int ) ;
 int MACvWordRegBitsOff (scalar_t__,int ,int ) ;
 int MACvWordRegBitsOn (scalar_t__,int ,int ) ;
 int SOFTPWRCTL_SWPE3 ;
 int SWITCH_CHANNEL_DELAY_AL7230 ;
 int TRUE ;
 int VNSvOutPortB (scalar_t__,int) ;
 int * dwAL7230ChannelTable0 ;
 int * dwAL7230ChannelTable1 ;
 int * dwAL7230ChannelTable2 ;

BOOL s_bAL7230SelectChannel (DWORD_PTR dwIoBase, BYTE byChannel)
{
    BOOL bResult;

    bResult = TRUE;


    MACvWordRegBitsOff(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);

    bResult &= IFRFbWriteEmbeded (dwIoBase, dwAL7230ChannelTable0[byChannel-1]);
    bResult &= IFRFbWriteEmbeded (dwIoBase, dwAL7230ChannelTable1[byChannel-1]);
    bResult &= IFRFbWriteEmbeded (dwIoBase, dwAL7230ChannelTable2[byChannel-1]);


    MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);


    VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel & 0x7F));
    MACvTimer0MicroSDelay(dwIoBase, SWITCH_CHANNEL_DELAY_AL7230);

    VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel | 0x80));

    return bResult;
}
