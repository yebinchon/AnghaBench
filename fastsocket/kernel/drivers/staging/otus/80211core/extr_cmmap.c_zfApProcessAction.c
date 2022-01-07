
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;



 int zfAggBlockAckActionFrame (int *,int *) ;
 int zmw_rx_buf_readb (int *,int *,int) ;

void zfApProcessAction(zdev_t* dev, zbuf_t* buf)
{
    u8_t category;





    category = zmw_rx_buf_readb(dev, buf, 24);

    switch (category)
    {
    case 128:
        zfAggBlockAckActionFrame(dev, buf);
        break;
    default:
        break;
    }

    return;
}
