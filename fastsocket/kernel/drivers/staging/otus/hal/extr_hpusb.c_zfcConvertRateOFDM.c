
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u32_t ;


 int zmw_rx_buf_readb (int *,int *,int ) ;

u32_t zfcConvertRateOFDM(zdev_t* dev, zbuf_t* buf)
{

    u32_t MCS = 0;

    switch(zmw_rx_buf_readb(dev, buf, 0)& 0xf)
    {
        case 0xb:
            MCS = 0x4;
            break;
        case 0xf:
            MCS = 0x5;
            break;
        case 0xa:
            MCS = 0x6;
            break;
        case 0xe:
            MCS = 0x7;
            break;
        case 0x9:
            MCS = 0x8;
            break;
        case 0xd:
            MCS = 0x9;
            break;
        case 0x8:
            MCS = 0xa;
            break;
        case 0xc:
            MCS = 0xb;
            break;
    }
    return MCS;
}
