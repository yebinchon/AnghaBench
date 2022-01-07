
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {int len; } ;
typedef TYPE_1__ zbuf_t ;
typedef int u16_t ;



u16_t zfwBufGetSize(zdev_t* dev, zbuf_t* buf)
{
    return buf->len;
}
