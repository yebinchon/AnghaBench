
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_virtqueue {int (* notify ) (struct virtqueue*) ;} ;
struct virtqueue {int dummy; } ;


 int stub1 (struct virtqueue*) ;
 struct vring_virtqueue* to_vvq (struct virtqueue*) ;

void virtqueue_notify(struct virtqueue *_vq)
{
 struct vring_virtqueue *vq = to_vvq(_vq);


 vq->notify(_vq);
}
