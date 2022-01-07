
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct zsMicVar {int k1; int k0; } ;
struct TYPE_3__ {scalar_t__ wmeConnected; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ sta; } ;


 int ZM_MIC_FAILURE ;
 int ZM_MIC_SUCCESS ;
 scalar_t__ ZM_MODE_AP ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 int ZM_SIZE_OF_EXT_IV ;
 int ZM_SIZE_OF_IV ;
 int ZM_SIZE_OF_WLAN_DATA_HEADER ;
 int ZM_WLAN_HEADER_A1_OFFSET ;
 int ZM_WLAN_HEADER_A2_OFFSET ;
 int ZM_WLAN_HEADER_A3_OFFSET ;
 TYPE_2__* wd ;
 struct zsMicVar* zfApGetRxMicKey (int *,int *) ;
 int zfCopyFromRxBuffer (int *,int *,int*,int ,int) ;
 int zfMicAppendByte (int,struct zsMicVar*) ;
 int zfMicClear (struct zsMicVar*) ;
 int zfMicGetMic (int*,struct zsMicVar*) ;
 int zfRxBufferEqualToStr (int *,int *,int*,int,int) ;
 struct zsMicVar* zfStaGetRxMicKey (int *,int *) ;
 int zfwBufGetSize (int *,int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_rx_buf_readb (int *,int *,int) ;

u8_t zfMicRxVerify(zdev_t* dev, zbuf_t* buf)
{
    struct zsMicVar* pMicKey;
    struct zsMicVar MyMicKey;
    u8_t mic[8];
    u8_t da[6];
    u8_t sa[6];
    u8_t bValue;
    u16_t i, payloadOffset, tailOffset;

    zmw_get_wlan_dev(dev);


    if ( wd->wlanMode == ZM_MODE_AP )
    {
        pMicKey = zfApGetRxMicKey(dev, buf);

        if ( pMicKey != ((void*)0) )
        {
            zfCopyFromRxBuffer(dev, buf, sa, ZM_WLAN_HEADER_A2_OFFSET, 6);
            zfCopyFromRxBuffer(dev, buf, da, ZM_WLAN_HEADER_A3_OFFSET, 6);
        }
        else
        {
            return ZM_MIC_SUCCESS;
        }
    }
    else if ( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
    {
        pMicKey = zfStaGetRxMicKey(dev, buf);

        if ( pMicKey != ((void*)0) )
        {
            zfCopyFromRxBuffer(dev, buf, sa, ZM_WLAN_HEADER_A3_OFFSET, 6);
            zfCopyFromRxBuffer(dev, buf, da, ZM_WLAN_HEADER_A1_OFFSET, 6);
        }
        else
        {
            return ZM_MIC_SUCCESS;
        }
    }
    else
    {
        return ZM_MIC_SUCCESS;
    }

    MyMicKey.k0=pMicKey->k0;
    MyMicKey.k1=pMicKey->k1;
    pMicKey = &MyMicKey;

    zfMicClear(pMicKey);
    tailOffset = zfwBufGetSize(dev, buf);
    tailOffset -= 8;


    for(i=0; i<6; i++)
    {
        zfMicAppendByte(da[i], pMicKey);
    }

    for(i=0; i<6; i++)
    {
        zfMicAppendByte(sa[i], pMicKey);
    }


    if ((zmw_rx_buf_readb(dev, buf, 0) & 0x80) != 0)
        zfMicAppendByte(zmw_rx_buf_readb(dev, buf,24)&0x7, pMicKey);
    else
        zfMicAppendByte(0, pMicKey);
    zfMicAppendByte(0, pMicKey);
    zfMicAppendByte(0, pMicKey);
    zfMicAppendByte(0, pMicKey);


    payloadOffset = ZM_SIZE_OF_WLAN_DATA_HEADER +
                    ZM_SIZE_OF_IV +
                    ZM_SIZE_OF_EXT_IV;

    if ((zmw_rx_buf_readb(dev, buf, 0) & 0x80) != 0)
    {

        if (wd->wlanMode == ZM_MODE_AP)
        {

        }
        else if (wd->wlanMode == ZM_MODE_INFRASTRUCTURE)
        {
            if (wd->sta.wmeConnected != 0)
            {
                payloadOffset += 2;
            }
        }
    }

    for(i=payloadOffset; i<tailOffset; i++)
    {
        bValue = zmw_rx_buf_readb(dev, buf, i);
        zfMicAppendByte(bValue, pMicKey);
    }

    zfMicGetMic(mic, pMicKey);

    if ( !zfRxBufferEqualToStr(dev, buf, mic, tailOffset, 8) )
    {
        return ZM_MIC_FAILURE;
    }

    return ZM_MIC_SUCCESS;
}
