
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u32_t ;
typedef int u16_t ;
struct zsQueue {int tail; int sizeMask; int head; TYPE_1__* cell; } ;
struct TYPE_2__ {int tick; int * buf; } ;


 int ZM_ERR_QUEUE_FULL ;
 int ZM_LV_1 ;
 int ZM_SUCCESS ;
 int zm_msg0_mm (int ,char*) ;

u16_t zfQueuePutNcs(zdev_t* dev, struct zsQueue* q, zbuf_t* buf, u32_t tick)
{
    u16_t ret = ZM_ERR_QUEUE_FULL;

    zm_msg0_mm(ZM_LV_1, "zfQueuePutNcs()");

    if (((q->tail+1)&q->sizeMask) != q->head)
    {
        q->cell[q->tail].buf = buf;
        q->cell[q->tail].tick = tick;
        q->tail = (q->tail+1) & q->sizeMask;
        ret = ZM_SUCCESS;
    }

    return ret;
}
