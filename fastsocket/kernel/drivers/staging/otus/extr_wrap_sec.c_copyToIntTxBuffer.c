
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;



void copyToIntTxBuffer(zdev_t* dev, zbuf_t* buf, u8_t* src,
                         u16_t offset, u16_t length)
{
    u16_t i;

    for(i=0; i<length;i++)
    {

        *(u8_t*)((u8_t*)buf->data+offset+i) = src[i];
    }
}
