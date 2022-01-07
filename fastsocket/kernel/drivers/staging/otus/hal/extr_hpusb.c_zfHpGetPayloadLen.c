
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;
typedef scalar_t__ s16_t ;
struct TYPE_2__ {int enableHALDbgInfo; } ;


 TYPE_1__* wd ;
 int zfcConvertRateOFDM (int *,int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_rx_buf_readb (int *,int *,int) ;

u16_t zfHpGetPayloadLen(zdev_t* dev,
                        zbuf_t* buf,
                        u16_t len,
                        u16_t plcpHdrLen,
                        u32_t *rxMT,
                        u32_t *rxMCS,
                        u32_t *rxBW,
                        u32_t *rxSG
                        )
{
    u8_t modulation,mpduInd;
    u16_t low, high, msb;
    s16_t payloadLen = 0;

    zmw_get_wlan_dev(dev);

    mpduInd = zmw_rx_buf_readb(dev, buf, len-1);
    modulation = zmw_rx_buf_readb(dev, buf, (len-1)) & 0x3;
    *rxMT = modulation;


    switch (modulation) {
    case 0:
        low = zmw_rx_buf_readb(dev, buf, 2);
        high = zmw_rx_buf_readb(dev, buf, 3);
        payloadLen = (low | high << 8) - 4;
        if (wd->enableHALDbgInfo)
        {
            *rxMCS = zmw_rx_buf_readb(dev, buf, 0);
            *rxBW = 0;
            *rxSG = 0;
        }
        break;
    case 1:
        low = zmw_rx_buf_readb(dev, buf, 0) >> 5;
        high = zmw_rx_buf_readb(dev, buf, 1);
        msb = zmw_rx_buf_readb(dev, buf, 2) & 0x1;
        payloadLen = (low | (high << 3) | (msb << 11)) - 4;
        if (wd->enableHALDbgInfo)
        {
            *rxMCS = zfcConvertRateOFDM(dev, buf);
            *rxBW = 0;
            *rxSG = 0;
        }
        break;
    case 2:

        if ((mpduInd & 0x30) == 0x00 || (mpduInd & 0x30) == 0x10)
            payloadLen = len - 24 - 4 - plcpHdrLen;
        else {
            payloadLen = len - 4 - 4 - plcpHdrLen;

        }
        if (wd->enableHALDbgInfo)
        {
            *rxMCS = zmw_rx_buf_readb(dev, buf, 3) & 0x7f;
            *rxBW = (zmw_rx_buf_readb(dev, buf, 3) >> 7) & 0x1;
            *rxSG = (zmw_rx_buf_readb(dev, buf, 6) >> 7) & 0x1;
        }
        break;
    default:
        break;

    }

    if (payloadLen < 0) payloadLen = 0;
    return payloadLen;
}
