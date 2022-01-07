
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int features; } ;




 unsigned int VIRTIO_TRANSPORT_F_END ;
 unsigned int VIRTIO_TRANSPORT_F_START ;
 int clear_bit (unsigned int,int ) ;

void vring_transport_features(struct virtio_device *vdev)
{
 unsigned int i;

 for (i = VIRTIO_TRANSPORT_F_START; i < VIRTIO_TRANSPORT_F_END; i++) {
  switch (i) {
  case 128:
   break;
  case 129:
   break;
  default:

   clear_bit(i, vdev->features);
  }
 }
}
