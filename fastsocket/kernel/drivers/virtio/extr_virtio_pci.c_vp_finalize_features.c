
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_pci_device {scalar_t__ ioaddr; } ;
struct virtio_device {int * features; } ;


 int ARRAY_SIZE (int *) ;
 int BUILD_BUG_ON (int) ;
 scalar_t__ VIRTIO_PCI_GUEST_FEATURES ;
 int iowrite32 (int ,scalar_t__) ;
 struct virtio_pci_device* to_vp_device (struct virtio_device*) ;
 int vring_transport_features (struct virtio_device*) ;

__attribute__((used)) static void vp_finalize_features(struct virtio_device *vdev)
{
 struct virtio_pci_device *vp_dev = to_vp_device(vdev);


 vring_transport_features(vdev);


 BUILD_BUG_ON(ARRAY_SIZE(vdev->features) != 1);
 iowrite32(vdev->features[0], vp_dev->ioaddr+VIRTIO_PCI_GUEST_FEATURES);
}
