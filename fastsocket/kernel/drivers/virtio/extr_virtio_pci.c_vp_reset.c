
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_pci_device {scalar_t__ ioaddr; } ;
struct virtio_device {int dummy; } ;


 scalar_t__ VIRTIO_PCI_STATUS ;
 int iowrite8 (int ,scalar_t__) ;
 struct virtio_pci_device* to_vp_device (struct virtio_device*) ;

__attribute__((used)) static void vp_reset(struct virtio_device *vdev)
{
 struct virtio_pci_device *vp_dev = to_vp_device(vdev);

 iowrite8(0, vp_dev->ioaddr + VIRTIO_PCI_STATUS);
}
