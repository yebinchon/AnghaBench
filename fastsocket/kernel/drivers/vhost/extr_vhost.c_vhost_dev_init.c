
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {scalar_t__ handle_kick; int poll; int mutex; struct vhost_dev* dev; int * ubuf_info; int * heads; int * indirect; int * log; } ;
struct vhost_dev {int nvqs; struct vhost_virtqueue* vqs; int * worker; int work_list; int work_lock; int * mm; int * memory; int * log_file; int * log_ctx; int mutex; } ;


 int INIT_LIST_HEAD (int *) ;
 int POLLIN ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int vhost_poll_init (int *,scalar_t__,int ,struct vhost_dev*) ;
 int vhost_vq_reset (struct vhost_dev*,struct vhost_virtqueue*) ;

long vhost_dev_init(struct vhost_dev *dev,
      struct vhost_virtqueue *vqs, int nvqs)
{
 int i;

 dev->vqs = vqs;
 dev->nvqs = nvqs;
 mutex_init(&dev->mutex);
 dev->log_ctx = ((void*)0);
 dev->log_file = ((void*)0);
 dev->memory = ((void*)0);
 dev->mm = ((void*)0);
 spin_lock_init(&dev->work_lock);
 INIT_LIST_HEAD(&dev->work_list);
 dev->worker = ((void*)0);

 for (i = 0; i < dev->nvqs; ++i) {
  dev->vqs[i].log = ((void*)0);
  dev->vqs[i].indirect = ((void*)0);
  dev->vqs[i].heads = ((void*)0);
  dev->vqs[i].ubuf_info = ((void*)0);
  dev->vqs[i].dev = dev;
  mutex_init(&dev->vqs[i].mutex);
  vhost_vq_reset(dev, dev->vqs + i);
  if (dev->vqs[i].handle_kick)
   vhost_poll_init(&dev->vqs[i].poll,
     dev->vqs[i].handle_kick, POLLIN, dev);
 }

 return 0;
}
