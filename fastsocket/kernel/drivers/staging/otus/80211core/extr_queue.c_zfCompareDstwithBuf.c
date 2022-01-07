
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef scalar_t__ u8_t ;
typedef int u16_t ;


 scalar_t__ zmw_buf_readb (int *,int *,int) ;

u16_t zfCompareDstwithBuf(zdev_t* dev, zbuf_t* buf, u8_t* addr)
{
    u16_t i;
    u8_t dst[6];

    for (i=0; i<6; i++)
    {
        dst[i] = zmw_buf_readb(dev, buf, i);
        if (dst[i] != addr[i])
        {
            return 1+i;
        }
    }

    return 0;
}
