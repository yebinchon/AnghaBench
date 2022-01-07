
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_pci_device {int intx_enabled; TYPE_1__* pci_dev; } ;
struct virtio_device {int dev; } ;
struct TYPE_2__ {int irq; } ;


 int IRQF_SHARED ;
 int dev_name (int *) ;
 int request_irq (int ,int ,int ,int ,struct virtio_pci_device*) ;
 struct virtio_pci_device* to_vp_device (struct virtio_device*) ;
 int vp_interrupt ;

__attribute__((used)) static int vp_request_intx(struct virtio_device *vdev)
{
 int err;
 struct virtio_pci_device *vp_dev = to_vp_device(vdev);

 err = request_irq(vp_dev->pci_dev->irq, vp_interrupt,
     IRQF_SHARED, dev_name(&vdev->dev), vp_dev);
 if (!err)
  vp_dev->intx_enabled = 1;
 return err;
}
