
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u16_t ;


 int * dev_alloc_skb (int ) ;

zbuf_t* zfwBufAllocate(zdev_t* dev, u16_t len)
{
    zbuf_t* buf;


    buf = dev_alloc_skb(len);

    return buf;
}
