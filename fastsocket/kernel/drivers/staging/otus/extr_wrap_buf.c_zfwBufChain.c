
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u16_t ;



u16_t zfwBufChain(zdev_t* dev, zbuf_t** head, zbuf_t* tail)
{

    *head = tail;
    return 0;
}
