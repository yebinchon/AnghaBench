
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD_PTR ;
typedef int BYTE ;
typedef int BOOL ;


 int IFRFbWriteEmbeded (scalar_t__,int ) ;
 scalar_t__ MAC_REG_CHANNEL ;
 int MACvTimer0MicroSDelay (scalar_t__,int ) ;
 int SWITCH_CHANNEL_DELAY_AL2230 ;
 int TRUE ;
 int VNSvOutPortB (scalar_t__,int) ;
 int * dwAL2230ChannelTable0 ;
 int * dwAL2230ChannelTable1 ;

BOOL RFbAL2230SelectChannel (DWORD_PTR dwIoBase, BYTE byChannel)
{
    BOOL bResult;

    bResult = TRUE;

    bResult &= IFRFbWriteEmbeded (dwIoBase, dwAL2230ChannelTable0[byChannel-1]);
    bResult &= IFRFbWriteEmbeded (dwIoBase, dwAL2230ChannelTable1[byChannel-1]);


    VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel & 0x7F));
    MACvTimer0MicroSDelay(dwIoBase, SWITCH_CHANNEL_DELAY_AL2230);

    VNSvOutPortB(dwIoBase + MAC_REG_CHANNEL, (byChannel | 0x80));

    return bResult;
}
