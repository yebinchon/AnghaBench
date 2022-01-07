
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vq_callback_t ;
struct virtqueue {int dummy; } ;
struct virtio_device {int dummy; } ;


 int vp_try_to_find_vqs (struct virtio_device*,unsigned int,struct virtqueue**,int **,char const**,int,int) ;

__attribute__((used)) static int vp_find_vqs(struct virtio_device *vdev, unsigned nvqs,
         struct virtqueue *vqs[],
         vq_callback_t *callbacks[],
         const char *names[])
{
 int err;


 err = vp_try_to_find_vqs(vdev, nvqs, vqs, callbacks, names, 1, 1);
 if (!err)
  return 0;

 err = vp_try_to_find_vqs(vdev, nvqs, vqs, callbacks, names,
     1, 0);
 if (!err)
  return 0;

 return vp_try_to_find_vqs(vdev, nvqs, vqs, callbacks, names,
      0, 0);
}
