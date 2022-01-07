
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ zbuf_t ;
typedef scalar_t__ u16_t ;



u16_t zfwBufRemoveHead(zdev_t* dev, zbuf_t* buf, u16_t size)
{


    buf->data += size;
    buf->len -= size;
    return 0;
}
