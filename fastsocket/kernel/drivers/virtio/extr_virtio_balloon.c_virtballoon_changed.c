
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {struct virtio_balloon* priv; } ;
struct virtio_balloon {int config_change; } ;


 int wake_up (int *) ;

__attribute__((used)) static void virtballoon_changed(struct virtio_device *vdev)
{
 struct virtio_balloon *vb = vdev->priv;

 wake_up(&vb->config_change);
}
