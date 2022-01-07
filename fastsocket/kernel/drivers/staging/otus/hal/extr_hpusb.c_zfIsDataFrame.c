
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;


 int ZM_WLAN_DATA_FRAME ;
 int zfwBufGetSize (int *,int *) ;
 int zmw_rx_buf_readb (int *,int *,int) ;

u8_t zfIsDataFrame(zdev_t* dev, zbuf_t* buf)
{
    u8_t frameType;
    u8_t mpduInd;

    mpduInd = zmw_rx_buf_readb(dev, buf, zfwBufGetSize(dev, buf)-1);


    if ((mpduInd & 0x30) == 0x00 || (mpduInd & 0x30) == 0x20)
    {
        frameType = zmw_rx_buf_readb(dev, buf, 12);
    }
    else
    {
        frameType = zmw_rx_buf_readb(dev, buf, 0);
    }

    if((frameType & 0xf) == ZM_WLAN_DATA_FRAME)
        return 1;
    else
        return 0;
}
