
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef size_t u16_t ;


 int zmw_rx_buf_writeb (int *,int *,size_t,int ) ;

void zfCopyToRxBuffer(zdev_t* dev, zbuf_t* buf, u8_t* src,
                      u16_t offset, u16_t length)
{
    u16_t i;

    for(i=0; i<length;i++)
    {
        zmw_rx_buf_writeb(dev, buf, offset+i, src[i]);
    }
}
