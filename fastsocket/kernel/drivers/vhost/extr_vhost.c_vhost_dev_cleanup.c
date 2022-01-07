
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vhost_dev {int nvqs; int * mm; int * worker; int work_list; int * memory; int * log_file; int * log_ctx; TYPE_1__* vqs; } ;
struct TYPE_3__ {int * call; int * call_ctx; int * kick; int * error; int * error_ctx; scalar_t__ ubufs; int poll; scalar_t__ handle_kick; } ;


 int WARN_ON (int) ;
 int eventfd_ctx_put (int *) ;
 int fput (int *) ;
 int kfree (int *) ;
 int kthread_stop (int *) ;
 int list_empty (int *) ;
 int mmput (int *) ;
 int vhost_dev_free_iovecs (struct vhost_dev*) ;
 int vhost_poll_flush (int *) ;
 int vhost_poll_stop (int *) ;
 int vhost_ubuf_put_and_wait (scalar_t__) ;
 int vhost_vq_reset (struct vhost_dev*,TYPE_1__*) ;
 int vhost_zerocopy_signal_used (TYPE_1__*) ;

void vhost_dev_cleanup(struct vhost_dev *dev)
{
 int i;
 for (i = 0; i < dev->nvqs; ++i) {
  if (dev->vqs[i].kick && dev->vqs[i].handle_kick) {
   vhost_poll_stop(&dev->vqs[i].poll);
   vhost_poll_flush(&dev->vqs[i].poll);
  }

  if (dev->vqs[i].ubufs)
   vhost_ubuf_put_and_wait(dev->vqs[i].ubufs);


  vhost_zerocopy_signal_used(&dev->vqs[i]);

  if (dev->vqs[i].error_ctx)
   eventfd_ctx_put(dev->vqs[i].error_ctx);
  if (dev->vqs[i].error)
   fput(dev->vqs[i].error);
  if (dev->vqs[i].kick)
   fput(dev->vqs[i].kick);
  if (dev->vqs[i].call_ctx)
   eventfd_ctx_put(dev->vqs[i].call_ctx);
  if (dev->vqs[i].call)
   fput(dev->vqs[i].call);
  vhost_vq_reset(dev, dev->vqs + i);
 }
 vhost_dev_free_iovecs(dev);
 if (dev->log_ctx)
  eventfd_ctx_put(dev->log_ctx);
 dev->log_ctx = ((void*)0);
 if (dev->log_file)
  fput(dev->log_file);
 dev->log_file = ((void*)0);

 kfree(dev->memory);
 dev->memory = ((void*)0);
 WARN_ON(!list_empty(&dev->work_list));
 if (dev->worker) {
  kthread_stop(dev->worker);
  dev->worker = ((void*)0);
 }
 if (dev->mm)
  mmput(dev->mm);
 dev->mm = ((void*)0);
}
