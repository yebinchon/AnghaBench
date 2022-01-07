
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_virtqueue {TYPE_1__* heads; int poll; } ;
struct vhost_ubuf_ref {int kref; struct vhost_virtqueue* vq; } ;
struct ubuf_info {size_t desc; struct vhost_ubuf_ref* arg; } ;
struct TYPE_2__ {int len; } ;


 int VHOST_DMA_DONE_LEN ;
 int kref_put (int *,int ) ;
 int vhost_poll_queue (int *) ;
 int vhost_zerocopy_done_signal ;

void vhost_zerocopy_callback(void *arg)
{
 struct ubuf_info *ubuf = arg;
 struct vhost_ubuf_ref *ubufs = ubuf->arg;
 struct vhost_virtqueue *vq = ubufs->vq;

 vhost_poll_queue(&vq->poll);

 vq->heads[ubuf->desc].len = VHOST_DMA_DONE_LEN;
 kref_put(&ubufs->kref, vhost_zerocopy_done_signal);
}
