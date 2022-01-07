
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct virtqueue {struct virtio_pci_vq_info* priv; } ;
struct virtio_pci_vq_info {unsigned int queue_index; int * queue; int node; struct virtqueue* vq; scalar_t__ num; scalar_t__ msix_vector; } ;
struct virtio_pci_device {scalar_t__ ioaddr; int lock; int virtqueues; } ;
struct virtio_device {int dummy; } ;


 int EBUSY ;
 int ENOENT ;
 int ENOMEM ;
 struct virtqueue* ERR_PTR (int) ;
 int GFP_KERNEL ;
 unsigned long PAGE_ALIGN (int ) ;
 scalar_t__ VIRTIO_MSI_NO_VECTOR ;
 scalar_t__ VIRTIO_MSI_QUEUE_VECTOR ;
 int VIRTIO_PCI_QUEUE_ADDR_SHIFT ;
 scalar_t__ VIRTIO_PCI_QUEUE_NUM ;
 scalar_t__ VIRTIO_PCI_QUEUE_PFN ;
 scalar_t__ VIRTIO_PCI_QUEUE_SEL ;
 int VIRTIO_PCI_VRING_ALIGN ;
 int __GFP_ZERO ;
 int * alloc_pages_exact (unsigned long,int) ;
 int free_pages_exact (int *,unsigned long) ;
 scalar_t__ ioread16 (scalar_t__) ;
 scalar_t__ ioread32 (scalar_t__) ;
 int iowrite16 (scalar_t__,scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int kfree (struct virtio_pci_vq_info*) ;
 struct virtio_pci_vq_info* kmalloc (int,int) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct virtio_pci_device* to_vp_device (struct virtio_device*) ;
 int virt_to_phys (int *) ;
 int vp_notify ;
 int vring_del_virtqueue (struct virtqueue*) ;
 struct virtqueue* vring_new_virtqueue (scalar_t__,int ,struct virtio_device*,int *,int ,void (*) (struct virtqueue*),char const*) ;
 int vring_size (scalar_t__,int ) ;

__attribute__((used)) static struct virtqueue *setup_vq(struct virtio_device *vdev, unsigned index,
      void (*callback)(struct virtqueue *vq),
      const char *name,
      u16 msix_vec)
{
 struct virtio_pci_device *vp_dev = to_vp_device(vdev);
 struct virtio_pci_vq_info *info;
 struct virtqueue *vq;
 unsigned long flags, size;
 u16 num;
 int err;


 iowrite16(index, vp_dev->ioaddr + VIRTIO_PCI_QUEUE_SEL);


 num = ioread16(vp_dev->ioaddr + VIRTIO_PCI_QUEUE_NUM);
 if (!num || ioread32(vp_dev->ioaddr + VIRTIO_PCI_QUEUE_PFN))
  return ERR_PTR(-ENOENT);



 info = kmalloc(sizeof(struct virtio_pci_vq_info), GFP_KERNEL);
 if (!info)
  return ERR_PTR(-ENOMEM);

 info->queue_index = index;
 info->num = num;
 info->msix_vector = msix_vec;

 size = PAGE_ALIGN(vring_size(num, VIRTIO_PCI_VRING_ALIGN));
 info->queue = alloc_pages_exact(size, GFP_KERNEL|__GFP_ZERO);
 if (info->queue == ((void*)0)) {
  err = -ENOMEM;
  goto out_info;
 }


 iowrite32(virt_to_phys(info->queue) >> VIRTIO_PCI_QUEUE_ADDR_SHIFT,
    vp_dev->ioaddr + VIRTIO_PCI_QUEUE_PFN);


 vq = vring_new_virtqueue(info->num, VIRTIO_PCI_VRING_ALIGN,
     vdev, info->queue, vp_notify, callback, name);
 if (!vq) {
  err = -ENOMEM;
  goto out_activate_queue;
 }

 vq->priv = info;
 info->vq = vq;

 if (msix_vec != VIRTIO_MSI_NO_VECTOR) {
  iowrite16(msix_vec, vp_dev->ioaddr + VIRTIO_MSI_QUEUE_VECTOR);
  msix_vec = ioread16(vp_dev->ioaddr + VIRTIO_MSI_QUEUE_VECTOR);
  if (msix_vec == VIRTIO_MSI_NO_VECTOR) {
   err = -EBUSY;
   goto out_assign;
  }
 }

 spin_lock_irqsave(&vp_dev->lock, flags);
 list_add(&info->node, &vp_dev->virtqueues);
 spin_unlock_irqrestore(&vp_dev->lock, flags);

 return vq;

out_assign:
 vring_del_virtqueue(vq);
out_activate_queue:
 iowrite32(0, vp_dev->ioaddr + VIRTIO_PCI_QUEUE_PFN);
 free_pages_exact(info->queue, size);
out_info:
 kfree(info);
 return ERR_PTR(err);
}
