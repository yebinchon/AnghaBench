
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {struct virtio_pci_vq_info* priv; int vdev; } ;
struct virtio_pci_vq_info {int queue; int num; int queue_index; int node; } ;
struct virtio_pci_device {scalar_t__ ioaddr; scalar_t__ msix_enabled; int lock; } ;


 unsigned long PAGE_ALIGN (int ) ;
 int VIRTIO_MSI_NO_VECTOR ;
 scalar_t__ VIRTIO_MSI_QUEUE_VECTOR ;
 scalar_t__ VIRTIO_PCI_ISR ;
 scalar_t__ VIRTIO_PCI_QUEUE_PFN ;
 scalar_t__ VIRTIO_PCI_QUEUE_SEL ;
 int VIRTIO_PCI_VRING_ALIGN ;
 int free_pages_exact (int ,unsigned long) ;
 int ioread8 (scalar_t__) ;
 int iowrite16 (int ,scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int kfree (struct virtio_pci_vq_info*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct virtio_pci_device* to_vp_device (int ) ;
 int vring_del_virtqueue (struct virtqueue*) ;
 int vring_size (int ,int ) ;

__attribute__((used)) static void vp_del_vq(struct virtqueue *vq)
{
 struct virtio_pci_device *vp_dev = to_vp_device(vq->vdev);
 struct virtio_pci_vq_info *info = vq->priv;
 unsigned long flags, size;

 spin_lock_irqsave(&vp_dev->lock, flags);
 list_del(&info->node);
 spin_unlock_irqrestore(&vp_dev->lock, flags);

 iowrite16(info->queue_index, vp_dev->ioaddr + VIRTIO_PCI_QUEUE_SEL);

 if (vp_dev->msix_enabled) {
  iowrite16(VIRTIO_MSI_NO_VECTOR,
     vp_dev->ioaddr + VIRTIO_MSI_QUEUE_VECTOR);

  ioread8(vp_dev->ioaddr + VIRTIO_PCI_ISR);
 }

 vring_del_virtqueue(vq);


 iowrite32(0, vp_dev->ioaddr + VIRTIO_PCI_QUEUE_PFN);

 size = PAGE_ALIGN(vring_size(info->num, VIRTIO_PCI_VRING_ALIGN));
 free_pages_exact(info->queue, size);
 kfree(info);
}
