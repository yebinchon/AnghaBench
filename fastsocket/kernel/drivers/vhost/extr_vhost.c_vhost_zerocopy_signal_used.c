
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_virtqueue {int done_idx; int upend_idx; TYPE_1__* heads; int dev; } ;
struct TYPE_2__ {scalar_t__ len; int id; } ;


 int UIO_MAXIOV ;
 scalar_t__ VHOST_DMA_CLEAR_LEN ;
 scalar_t__ VHOST_DMA_DONE_LEN ;
 int vhost_add_used_and_signal (int ,struct vhost_virtqueue*,int ,int ) ;

int vhost_zerocopy_signal_used(struct vhost_virtqueue *vq)
{
 int i;
 int j = 0;

 for (i = vq->done_idx; i != vq->upend_idx; i = (i + 1) % UIO_MAXIOV) {
  if ((vq->heads[i].len == VHOST_DMA_DONE_LEN)) {
   vq->heads[i].len = VHOST_DMA_CLEAR_LEN;
   vhost_add_used_and_signal(vq->dev, vq,
        vq->heads[i].id, 0);
   ++j;
  } else
   break;
 }
 if (j)
  vq->done_idx = i;
 return j;
}
