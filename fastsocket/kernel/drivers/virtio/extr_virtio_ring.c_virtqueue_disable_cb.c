
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* avail; } ;
struct vring_virtqueue {TYPE_2__ vring; } ;
struct virtqueue {int dummy; } ;
struct TYPE_3__ {int flags; } ;


 int VRING_AVAIL_F_NO_INTERRUPT ;
 struct vring_virtqueue* to_vvq (struct virtqueue*) ;

void virtqueue_disable_cb(struct virtqueue *_vq)
{
 struct vring_virtqueue *vq = to_vvq(_vq);

 vq->vring.avail->flags |= VRING_AVAIL_F_NO_INTERRUPT;
}
