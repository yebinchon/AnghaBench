
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
struct zsMicVar {int dummy; } ;
struct TYPE_3__ {scalar_t__ wmeConnected; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ sta; } ;


 int ZM_80211_FRAME_IP_OFFSET ;
 int ZM_80211_FRAME_TYPE_OFFSET ;
 scalar_t__ ZM_MODE_AP ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 int ZM_SIZE_OF_MIC ;
 TYPE_2__* wd ;
 struct zsMicVar* zfApGetTxMicKey (int *,int *,int*) ;
 int zfMicAppendByte (int,struct zsMicVar*) ;
 int zfMicClear (struct zsMicVar*) ;
 int zfMicGetMic (int*,struct zsMicVar*) ;
 struct zsMicVar* zfStaGetTxMicKey (int *,int *) ;
 int zfwBufGetSize (int *,int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_tx_buf_readb (int *,int *,int) ;

u16_t zfTxGenWlanTail(zdev_t* dev, zbuf_t* buf, u16_t* snap, u16_t snaplen,
                      u16_t* mic)
{
    struct zsMicVar* pMicKey;
    u16_t i, length, payloadOffset;
    u8_t bValue, qosType = 0;
    u8_t snapByte[12];

    zmw_get_wlan_dev(dev);

    if ( wd->wlanMode == ZM_MODE_AP )
    {
        pMicKey = zfApGetTxMicKey(dev, buf, &qosType);

        if ( pMicKey == ((void*)0) )
        {
            return 0;
        }
    }
    else if ( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
    {
        pMicKey = zfStaGetTxMicKey(dev, buf);

        if ( pMicKey == ((void*)0) )
        {
            return 0;
        }
    }
    else
    {
        return 0;
    }

    length = zfwBufGetSize(dev, buf);

    zfMicClear(pMicKey);
    for(i=0; i<12; i++)
    {
        bValue = zmw_tx_buf_readb(dev, buf, i);
        zfMicAppendByte(bValue, pMicKey);
    }



    if ( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
    {
        if (wd->sta.wmeConnected != 0)
            zfMicAppendByte(zmw_tx_buf_readb(dev, buf, ZM_80211_FRAME_IP_OFFSET + 1) >> 5, pMicKey);
        else
            zfMicAppendByte(0, pMicKey);
    }
    else if ( wd->wlanMode == ZM_MODE_AP )
    {
        if (qosType == 1)
            zfMicAppendByte(zmw_tx_buf_readb(dev, buf, ZM_80211_FRAME_IP_OFFSET + 1) >> 5, pMicKey);
        else
            zfMicAppendByte(0, pMicKey);
    }
    else
    {

        zfMicAppendByte(0, pMicKey);
    }
    zfMicAppendByte(0, pMicKey);
    zfMicAppendByte(0, pMicKey);
    zfMicAppendByte(0, pMicKey);

    if ( snaplen == 0 )
    {
        payloadOffset = ZM_80211_FRAME_IP_OFFSET;
    }
    else
    {
        payloadOffset = ZM_80211_FRAME_TYPE_OFFSET;

        for(i=0; i<(snaplen>>1); i++)
        {
            snapByte[i*2] = (u8_t) (snap[i] & 0xff);
            snapByte[i*2+1] = (u8_t) ((snap[i] >> 8) & 0xff);
        }

        for(i=0; i<snaplen; i++)
        {
            zfMicAppendByte(snapByte[i], pMicKey);
        }
    }

    for(i=payloadOffset; i<length; i++)
    {
        bValue = zmw_tx_buf_readb(dev, buf, i);
        zfMicAppendByte(bValue, pMicKey);
    }

    zfMicGetMic( (u8_t*) mic, pMicKey);

    return ZM_SIZE_OF_MIC;
}
