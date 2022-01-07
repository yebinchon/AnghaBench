
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct virtio_pci_device {int msix_vectors; int msix_enabled; unsigned int msix_used_vectors; int * msix_names; TYPE_2__* msix_entries; scalar_t__ ioaddr; int pci_dev; TYPE_1__ vdev; } ;
struct virtio_device {int dummy; } ;
struct TYPE_4__ {unsigned int entry; int vector; } ;


 int EBUSY ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 scalar_t__ VIRTIO_MSI_CONFIG_VECTOR ;
 unsigned int VIRTIO_MSI_NO_VECTOR ;
 char* dev_name (int *) ;
 unsigned int ioread16 (scalar_t__) ;
 int iowrite16 (unsigned int,scalar_t__) ;
 void* kmalloc (int,int ) ;
 int pci_enable_msix (int ,TYPE_2__*,int) ;
 int request_irq (int ,int ,int ,int ,struct virtio_pci_device*) ;
 int snprintf (int ,int,char*,char const*) ;
 struct virtio_pci_device* to_vp_device (struct virtio_device*) ;
 int vp_config_changed ;
 int vp_free_vectors (struct virtio_device*) ;
 int vp_vring_interrupt ;

__attribute__((used)) static int vp_request_msix_vectors(struct virtio_device *vdev, int nvectors,
       bool per_vq_vectors)
{
 struct virtio_pci_device *vp_dev = to_vp_device(vdev);
 const char *name = dev_name(&vp_dev->vdev.dev);
 unsigned i, v;
 int err = -ENOMEM;

 vp_dev->msix_entries = kmalloc(nvectors * sizeof *vp_dev->msix_entries,
           GFP_KERNEL);
 if (!vp_dev->msix_entries)
  goto error;
 vp_dev->msix_names = kmalloc(nvectors * sizeof *vp_dev->msix_names,
         GFP_KERNEL);
 if (!vp_dev->msix_names)
  goto error;

 for (i = 0; i < nvectors; ++i)
  vp_dev->msix_entries[i].entry = i;


 err = pci_enable_msix(vp_dev->pci_dev, vp_dev->msix_entries, nvectors);
 if (err > 0)
  err = -ENOSPC;
 if (err)
  goto error;
 vp_dev->msix_vectors = nvectors;
 vp_dev->msix_enabled = 1;


 v = vp_dev->msix_used_vectors;
 snprintf(vp_dev->msix_names[v], sizeof *vp_dev->msix_names,
   "%s-config", name);
 err = request_irq(vp_dev->msix_entries[v].vector,
     vp_config_changed, 0, vp_dev->msix_names[v],
     vp_dev);
 if (err)
  goto error;
 ++vp_dev->msix_used_vectors;

 iowrite16(v, vp_dev->ioaddr + VIRTIO_MSI_CONFIG_VECTOR);

 v = ioread16(vp_dev->ioaddr + VIRTIO_MSI_CONFIG_VECTOR);
 if (v == VIRTIO_MSI_NO_VECTOR) {
  err = -EBUSY;
  goto error;
 }

 if (!per_vq_vectors) {

  v = vp_dev->msix_used_vectors;
  snprintf(vp_dev->msix_names[v], sizeof *vp_dev->msix_names,
    "%s-virtqueues", name);
  err = request_irq(vp_dev->msix_entries[v].vector,
      vp_vring_interrupt, 0, vp_dev->msix_names[v],
      vp_dev);
  if (err)
   goto error;
  ++vp_dev->msix_used_vectors;
 }
 return 0;
error:
 vp_free_vectors(vdev);
 return err;
}
