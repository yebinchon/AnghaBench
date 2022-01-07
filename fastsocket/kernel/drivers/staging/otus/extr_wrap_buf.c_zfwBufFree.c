
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u16_t ;


 int dev_kfree_skb_any (int *) ;

void zfwBufFree(zdev_t* dev, zbuf_t* buf, u16_t status)
{
    dev_kfree_skb_any(buf);
}
