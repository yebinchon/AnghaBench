
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef scalar_t__ u16_t ;


 int zmw_tx_buf_readb (int *,int *,scalar_t__) ;
 int zmw_tx_buf_writeb (int *,int *,scalar_t__,int ) ;

void zfTxBufferCopy(zdev_t*dev, zbuf_t* dst, zbuf_t* src,
                    u16_t dstOffset, u16_t srcOffset, u16_t length)
{
    u16_t i;

    for(i=0; i<length; i++)
    {
        zmw_tx_buf_writeb(dev, dst, dstOffset+i,
                          zmw_tx_buf_readb(dev, src, srcOffset+i));
    }
}
