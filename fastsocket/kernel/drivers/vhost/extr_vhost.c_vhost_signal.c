
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {scalar_t__ call_ctx; } ;
struct vhost_dev {int dummy; } ;


 int eventfd_signal (scalar_t__,int) ;
 scalar_t__ vhost_notify (struct vhost_dev*,struct vhost_virtqueue*) ;

void vhost_signal(struct vhost_dev *dev, struct vhost_virtqueue *vq)
{

 if (vq->call_ctx && vhost_notify(dev, vq))
  eventfd_signal(vq->call_ctx, 1);
}
