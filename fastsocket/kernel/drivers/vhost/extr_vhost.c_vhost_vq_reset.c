
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int num; int signalled_used_valid; int log_used; unsigned long long log_addr; int * ubufs; scalar_t__ done_idx; scalar_t__ upend_idx; int * log_ctx; int * call; int * call_ctx; int * kick; int * error; int * error_ctx; int * log_base; int * private_data; scalar_t__ sock_hlen; scalar_t__ vhost_hlen; scalar_t__ used_flags; scalar_t__ signalled_used; scalar_t__ last_used_idx; scalar_t__ avail_idx; scalar_t__ last_avail_idx; int * used; int * avail; int * desc; } ;
struct vhost_dev {int dummy; } ;



__attribute__((used)) static void vhost_vq_reset(struct vhost_dev *dev,
      struct vhost_virtqueue *vq)
{
 vq->num = 1;
 vq->desc = ((void*)0);
 vq->avail = ((void*)0);
 vq->used = ((void*)0);
 vq->last_avail_idx = 0;
 vq->avail_idx = 0;
 vq->last_used_idx = 0;
 vq->signalled_used = 0;
 vq->signalled_used_valid = 0;
 vq->used_flags = 0;
 vq->log_used = 0;
 vq->log_addr = -1ull;
 vq->vhost_hlen = 0;
 vq->sock_hlen = 0;
 vq->private_data = ((void*)0);
 vq->log_base = ((void*)0);
 vq->error_ctx = ((void*)0);
 vq->error = ((void*)0);
 vq->kick = ((void*)0);
 vq->call_ctx = ((void*)0);
 vq->call = ((void*)0);
 vq->log_ctx = ((void*)0);
 vq->upend_idx = 0;
 vq->done_idx = 0;
 vq->ubufs = ((void*)0);
}
