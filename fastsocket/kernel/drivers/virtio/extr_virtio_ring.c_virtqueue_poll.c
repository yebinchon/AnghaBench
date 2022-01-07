
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_4__ {TYPE_1__* used; } ;
struct vring_virtqueue {TYPE_2__ vring; } ;
struct virtqueue {int dummy; } ;
struct TYPE_3__ {scalar_t__ idx; } ;


 struct vring_virtqueue* to_vvq (struct virtqueue*) ;
 int virtio_mb () ;

bool virtqueue_poll(struct virtqueue *_vq, unsigned last_used_idx)
{
 struct vring_virtqueue *vq = to_vvq(_vq);

 virtio_mb();
 return (u16)last_used_idx != vq->vring.used->idx;
}
