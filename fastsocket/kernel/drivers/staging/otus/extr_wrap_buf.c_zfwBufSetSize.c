
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_4__ {scalar_t__ len; scalar_t__ data; scalar_t__ tail; } ;
typedef TYPE_1__ zbuf_t ;
typedef int u16_t ;


 int skb_put (TYPE_1__*,int ) ;

u16_t zfwBufSetSize(zdev_t* dev, zbuf_t* buf, u16_t size)
{




    buf->tail = buf->data;
    buf->len = 0;


    skb_put(buf, size);
    return 0;
}
