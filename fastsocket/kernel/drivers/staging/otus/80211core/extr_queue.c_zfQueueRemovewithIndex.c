
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;
struct zsQueue {int sizeMask; int tail; TYPE_1__* cell; } ;
struct TYPE_2__ {int buf; int tick; } ;


 scalar_t__ zfCompareDstwithBuf (int *,int ,int*) ;

u8_t zfQueueRemovewithIndex(zdev_t* dev, struct zsQueue* q, u16_t index, u8_t* addr)
{
    u16_t next;
    u8_t mb = 0;


    while ((next =((index+1)&q->sizeMask)) != q->tail)
    {
        q->cell[index].buf = q->cell[next].buf;
        q->cell[index].tick = q->cell[next].tick;

        if ((mb == 0) && (zfCompareDstwithBuf(dev,
                q->cell[next].buf, addr) == 0))
        {
            mb = 1;
        }

        index = next;
    }
    q->tail = (q->tail-1) & q->sizeMask;

    return mb;

}
