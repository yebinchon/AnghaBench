
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u16_t ;
struct zsQueueCell {int dummy; } ;
struct zsQueue {int size; } ;


 int zfQueueFlush (int *,struct zsQueue*) ;
 int zfwMemFree (int *,struct zsQueue*,int) ;

void zfQueueDestroy(zdev_t* dev, struct zsQueue* q)
{
    u16_t size = sizeof(struct zsQueue) + (sizeof(struct zsQueueCell)*(q->size-1));

    zfQueueFlush(dev, q);
    zfwMemFree(dev, q, size);

    return;
}
