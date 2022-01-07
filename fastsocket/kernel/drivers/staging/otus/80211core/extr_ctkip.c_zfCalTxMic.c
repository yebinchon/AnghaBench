
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct zsMicVar {int dummy; } ;
struct TYPE_2__ {scalar_t__ wlanMode; } ;


 scalar_t__ ZM_MODE_AP ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 TYPE_1__* wd ;
 struct zsMicVar* zfApGetTxMicKey (int *,int *,int*) ;
 int zfMicAppendByte (int,struct zsMicVar*) ;
 int zfMicClear (struct zsMicVar*) ;
 int zfMicGetMic (int*,struct zsMicVar*) ;
 struct zsMicVar* zfStaGetTxMicKey (int *,int *) ;
 int zfwBufGetSize (int *,int *) ;
 int zm_debug_msg0 (char*) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_tx_buf_readb (int *,int *,int) ;

void zfCalTxMic(zdev_t *dev, zbuf_t *buf, u8_t *snap, u16_t snapLen, u16_t offset, u16_t *da, u16_t *sa, u8_t up, u8_t *mic)
{
    struct zsMicVar* pMicKey;
    u16_t i;
    u16_t len;
    u8_t bValue;
    u8_t qosType;
    u8_t *pDa = (u8_t *)da;
    u8_t *pSa = (u8_t *)sa;

    zmw_get_wlan_dev(dev);


    if ( wd->wlanMode == ZM_MODE_AP )
    {
        pMicKey = zfApGetTxMicKey(dev, buf, &qosType);

        if ( pMicKey == ((void*)0) )
            return;
    }
    else if ( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
    {
        pMicKey = zfStaGetTxMicKey(dev, buf);

        if ( pMicKey == ((void*)0) )
        {
            zm_debug_msg0("pMicKey is NULL");
            return;
        }
    }
    else
    {
        return;
    }

    zfMicClear(pMicKey);
    len = zfwBufGetSize(dev, buf);


    for(i = 0; i < 6; i++)
    {
        zfMicAppendByte(pDa[i], pMicKey);
    }


    for(i = 0; i < 6; i++)
    {
        zfMicAppendByte(pSa[i], pMicKey);
    }

    if (up != 0)
        zfMicAppendByte((up&0x7), pMicKey);
    else
        zfMicAppendByte(0, pMicKey);

    zfMicAppendByte(0, pMicKey);
    zfMicAppendByte(0, pMicKey);
    zfMicAppendByte(0, pMicKey);


    for(i = 0; i < snapLen; i++)
    {
        zfMicAppendByte(snap[i], pMicKey);
    }

    for(i = offset; i < len; i++)
    {
        bValue = zmw_tx_buf_readb(dev, buf, i);
        zfMicAppendByte(bValue, pMicKey);
    }

    zfMicGetMic(mic, pMicKey);
}
