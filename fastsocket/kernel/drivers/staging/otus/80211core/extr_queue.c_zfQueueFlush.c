
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
struct zsQueue {int dummy; } ;


 int * zfQueueGet (int *,struct zsQueue*) ;
 int zfwBufFree (int *,int *,int ) ;

void zfQueueFlush(zdev_t* dev, struct zsQueue* q)
{
    zbuf_t* buf;

    while ((buf = zfQueueGet(dev, q)) != ((void*)0))
    {
        zfwBufFree(dev, buf, 0);
    }

    return;
}
