
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;


 scalar_t__ virtqueue_kick_prepare (struct virtqueue*) ;
 int virtqueue_notify (struct virtqueue*) ;

void virtqueue_kick(struct virtqueue *vq)
{
 if (virtqueue_kick_prepare(vq))
  virtqueue_notify(vq);
}
