
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {struct virtio_pci_vq_info* priv; int vdev; } ;
struct virtio_pci_vq_info {int queue_index; } ;
struct virtio_pci_device {scalar_t__ ioaddr; } ;


 scalar_t__ VIRTIO_PCI_QUEUE_NOTIFY ;
 int iowrite16 (int ,scalar_t__) ;
 struct virtio_pci_device* to_vp_device (int ) ;

__attribute__((used)) static void vp_notify(struct virtqueue *vq)
{
 struct virtio_pci_device *vp_dev = to_vp_device(vq->vdev);
 struct virtio_pci_vq_info *info = vq->priv;



 iowrite16(info->queue_index, vp_dev->ioaddr + VIRTIO_PCI_QUEUE_NOTIFY);
}
