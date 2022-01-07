
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD_PTR ;
typedef scalar_t__ BYTE ;
typedef int BOOL ;


 scalar_t__ CB_MAX_CHANNEL_24G ;
 int IFRFbWriteEmbeded (int ,int ) ;
 int TRUE ;
 int * dwAL7230InitTable ;
 int * dwAL7230InitTableAMode ;

BOOL RFbAL7230SelectChannelPostProcess (DWORD_PTR dwIoBase, BYTE byOldChannel, BYTE byNewChannel)
{
    BOOL bResult;

    bResult = TRUE;




    if( (byOldChannel <= CB_MAX_CHANNEL_24G) && (byNewChannel > CB_MAX_CHANNEL_24G) )
    {

        bResult &= IFRFbWriteEmbeded(dwIoBase, dwAL7230InitTableAMode[2]);
        bResult &= IFRFbWriteEmbeded(dwIoBase, dwAL7230InitTableAMode[3]);
        bResult &= IFRFbWriteEmbeded(dwIoBase, dwAL7230InitTableAMode[5]);
        bResult &= IFRFbWriteEmbeded(dwIoBase, dwAL7230InitTableAMode[7]);
        bResult &= IFRFbWriteEmbeded(dwIoBase, dwAL7230InitTableAMode[10]);
        bResult &= IFRFbWriteEmbeded(dwIoBase, dwAL7230InitTableAMode[12]);
        bResult &= IFRFbWriteEmbeded(dwIoBase, dwAL7230InitTableAMode[15]);
    }
    else if( (byOldChannel > CB_MAX_CHANNEL_24G) && (byNewChannel <= CB_MAX_CHANNEL_24G) )
    {

        bResult &= IFRFbWriteEmbeded(dwIoBase, dwAL7230InitTable[2]);
        bResult &= IFRFbWriteEmbeded(dwIoBase, dwAL7230InitTable[3]);
        bResult &= IFRFbWriteEmbeded(dwIoBase, dwAL7230InitTable[5]);
        bResult &= IFRFbWriteEmbeded(dwIoBase, dwAL7230InitTable[7]);
        bResult &= IFRFbWriteEmbeded(dwIoBase, dwAL7230InitTable[10]);
        bResult &= IFRFbWriteEmbeded(dwIoBase, dwAL7230InitTable[12]);
        bResult &= IFRFbWriteEmbeded(dwIoBase, dwAL7230InitTable[15]);
    }

    return bResult;
}
