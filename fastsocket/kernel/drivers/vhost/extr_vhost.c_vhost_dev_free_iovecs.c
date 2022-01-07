
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_dev {int nvqs; int * vqs; } ;


 int vhost_vq_free_iovecs (int *) ;

__attribute__((used)) static void vhost_dev_free_iovecs(struct vhost_dev *dev)
{
 int i;
 for (i = 0; i < dev->nvqs; ++i)
  vhost_vq_free_iovecs(&dev->vqs[i]);
}
