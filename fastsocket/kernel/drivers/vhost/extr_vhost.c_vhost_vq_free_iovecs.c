
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int * ubuf_info; int * heads; int * log; int * indirect; } ;


 int kfree (int *) ;

__attribute__((used)) static void vhost_vq_free_iovecs(struct vhost_virtqueue *vq)
{
 kfree(vq->indirect);
 vq->indirect = ((void*)0);
 kfree(vq->log);
 vq->log = ((void*)0);
 kfree(vq->heads);
 vq->heads = ((void*)0);
 kfree(vq->ubuf_info);
 vq->ubuf_info = ((void*)0);
}
