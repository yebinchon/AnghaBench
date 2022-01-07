
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int log_base; int dev; int used; int avail; int desc; int num; } ;


 scalar_t__ vq_access_ok (int ,int ,int ,int ,int ) ;
 scalar_t__ vq_log_access_ok (int ,struct vhost_virtqueue*,int ) ;

int vhost_vq_access_ok(struct vhost_virtqueue *vq)
{
 return vq_access_ok(vq->dev, vq->num, vq->desc, vq->avail, vq->used) &&
  vq_log_access_ok(vq->dev, vq, vq->log_base);
}
