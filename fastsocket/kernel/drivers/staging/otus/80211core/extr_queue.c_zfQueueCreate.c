
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u16_t ;
struct zsQueueCell {int dummy; } ;
struct zsQueue {int size; int sizeMask; scalar_t__ tail; scalar_t__ head; } ;


 scalar_t__ zfwMemAllocate (int *,int) ;

struct zsQueue* zfQueueCreate(zdev_t* dev, u16_t size)
{
    struct zsQueue* q;

    if ((q = (struct zsQueue*)zfwMemAllocate(dev, sizeof(struct zsQueue)
            + (sizeof(struct zsQueueCell)*(size-1)))) != ((void*)0))
    {
        q->size = size;
        q->sizeMask = size-1;
        q->head = 0;
        q->tail = 0;
    }
    return q;
}
