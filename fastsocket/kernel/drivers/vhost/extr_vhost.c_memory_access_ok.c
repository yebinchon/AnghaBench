
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_memory {int dummy; } ;
struct vhost_dev {int nvqs; TYPE_1__* vqs; } ;
struct TYPE_2__ {int mutex; int log_base; scalar_t__ private_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vq_memory_access_ok (int ,struct vhost_memory*,int) ;

__attribute__((used)) static int memory_access_ok(struct vhost_dev *d, struct vhost_memory *mem,
       int log_all)
{
 int i;
 for (i = 0; i < d->nvqs; ++i) {
  int ok;
  mutex_lock(&d->vqs[i].mutex);

  if (d->vqs[i].private_data)
   ok = vq_memory_access_ok(d->vqs[i].log_base, mem,
       log_all);
  else
   ok = 1;
  mutex_unlock(&d->vqs[i].mutex);
  if (!ok)
   return 0;
 }
 return 1;
}
