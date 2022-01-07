
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vq_callback_t ;
typedef size_t u16 ;
struct virtqueue {int dummy; } ;
struct TYPE_3__ {int dev; } ;
struct virtio_pci_device {int per_vq_vectors; int msix_used_vectors; int * msix_names; TYPE_2__* msix_entries; TYPE_1__ vdev; int msix_enabled; } ;
struct virtio_device {int dummy; } ;
struct TYPE_4__ {int vector; } ;


 scalar_t__ IS_ERR (struct virtqueue*) ;
 int PTR_ERR (struct virtqueue*) ;
 size_t VIRTIO_MSI_NO_VECTOR ;
 size_t VP_MSIX_VQ_VECTOR ;
 char* dev_name (int *) ;
 int request_irq (int ,int ,int ,int ,struct virtqueue*) ;
 struct virtqueue* setup_vq (struct virtio_device*,int,int *,char const*,size_t) ;
 int snprintf (int ,int,char*,char*,char const*) ;
 struct virtio_pci_device* to_vp_device (struct virtio_device*) ;
 int vp_del_vq (struct virtqueue*) ;
 int vp_del_vqs (struct virtio_device*) ;
 int vp_request_intx (struct virtio_device*) ;
 int vp_request_msix_vectors (struct virtio_device*,int,int) ;
 int vring_interrupt ;

__attribute__((used)) static int vp_try_to_find_vqs(struct virtio_device *vdev, unsigned nvqs,
         struct virtqueue *vqs[],
         vq_callback_t *callbacks[],
         const char *names[],
         bool use_msix,
         bool per_vq_vectors)
{
 struct virtio_pci_device *vp_dev = to_vp_device(vdev);
 u16 msix_vec;
 int i, err, nvectors, allocated_vectors;

 if (!use_msix) {

  err = vp_request_intx(vdev);
  if (err)
   goto error_request;
 } else {
  if (per_vq_vectors) {

   nvectors = 1;
   for (i = 0; i < nvqs; ++i)
    if (callbacks[i])
     ++nvectors;
  } else {

   nvectors = 2;
  }

  err = vp_request_msix_vectors(vdev, nvectors, per_vq_vectors);
  if (err)
   goto error_request;
 }

 vp_dev->per_vq_vectors = per_vq_vectors;
 allocated_vectors = vp_dev->msix_used_vectors;
 for (i = 0; i < nvqs; ++i) {
  if (!callbacks[i] || !vp_dev->msix_enabled)
   msix_vec = VIRTIO_MSI_NO_VECTOR;
  else if (vp_dev->per_vq_vectors)
   msix_vec = allocated_vectors++;
  else
   msix_vec = VP_MSIX_VQ_VECTOR;
  vqs[i] = setup_vq(vdev, i, callbacks[i], names[i], msix_vec);
  if (IS_ERR(vqs[i])) {
   err = PTR_ERR(vqs[i]);
   goto error_find;
  }

  if (!vp_dev->per_vq_vectors || msix_vec == VIRTIO_MSI_NO_VECTOR)
   continue;


  snprintf(vp_dev->msix_names[msix_vec],
    sizeof *vp_dev->msix_names,
    "%s-%s",
    dev_name(&vp_dev->vdev.dev), names[i]);
  err = request_irq(vp_dev->msix_entries[msix_vec].vector,
      vring_interrupt, 0,
      vp_dev->msix_names[msix_vec],
      vqs[i]);
  if (err) {
   vp_del_vq(vqs[i]);
   goto error_find;
  }
 }
 return 0;

error_find:
 vp_del_vqs(vdev);

error_request:
 return err;
}
