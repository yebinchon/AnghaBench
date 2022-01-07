
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;


 scalar_t__ ZM_80211_FRAME_IP_OFFSET ;
 scalar_t__ ZM_80211_FRAME_TYPE_OFFSET ;
 int zfwBufGetSize (int *,int *) ;
 int zmw_tx_buf_readb (int *,int *,scalar_t__) ;
 int zmw_tx_buf_readh (int *,int *,scalar_t__) ;

void zfTxGetIpTosAndFrag(zdev_t* dev, zbuf_t* buf, u8_t* up, u16_t* fragOff)
{
    u8_t ipv;
    u16_t len;
 u16_t etherType;
    u8_t tos;

    *up = 0;
    *fragOff = 0;

    len = zfwBufGetSize(dev, buf);

    if (len >= 34)
    {
        etherType = (((u16_t)zmw_tx_buf_readb(dev, buf, ZM_80211_FRAME_TYPE_OFFSET))<<8)
                    + zmw_tx_buf_readb(dev, buf, ZM_80211_FRAME_TYPE_OFFSET + 1);


        if (etherType == 0x0800)
        {
            ipv = zmw_tx_buf_readb(dev, buf, ZM_80211_FRAME_IP_OFFSET) >> 4;
            if (ipv == 0x4)
            {
                tos = zmw_tx_buf_readb(dev, buf, ZM_80211_FRAME_IP_OFFSET + 1);
                *up = (tos >> 5);
                *fragOff = zmw_tx_buf_readh(dev, buf, ZM_80211_FRAME_IP_OFFSET + 6);
            }

        }
    }
    return;
}
