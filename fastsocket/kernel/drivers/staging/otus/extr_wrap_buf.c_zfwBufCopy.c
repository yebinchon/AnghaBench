
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_5__ {int len; int data; int tail; } ;
typedef TYPE_1__ zbuf_t ;
typedef int u16_t ;


 int memcpy (int ,int ,int ) ;
 int skb_put (TYPE_1__*,int ) ;

u16_t zfwBufCopy(zdev_t* dev, zbuf_t* dst, zbuf_t* src)
{
    memcpy(dst->data, src->data, src->len);
    dst->tail = dst->data;
    skb_put(dst, src->len);
    return 0;
}
