#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vq_callback_t ;
typedef  size_t u16 ;
struct virtqueue {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct virtio_pci_device {int per_vq_vectors; int msix_used_vectors; int /*<<< orphan*/ * msix_names; TYPE_2__* msix_entries; TYPE_1__ vdev; int /*<<< orphan*/  msix_enabled; } ;
struct virtio_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct virtqueue*) ; 
 int FUNC1 (struct virtqueue*) ; 
 size_t VIRTIO_MSI_NO_VECTOR ; 
 size_t VP_MSIX_VQ_VECTOR ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct virtqueue*) ; 
 struct virtqueue* FUNC4 (struct virtio_device*,int,int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*,char const*) ; 
 struct virtio_pci_device* FUNC6 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC8 (struct virtio_device*) ; 
 int FUNC9 (struct virtio_device*) ; 
 int FUNC10 (struct virtio_device*,int,int) ; 
 int /*<<< orphan*/  vring_interrupt ; 

__attribute__((used)) static int FUNC11(struct virtio_device *vdev, unsigned nvqs,
			      struct virtqueue *vqs[],
			      vq_callback_t *callbacks[],
			      const char *names[],
			      bool use_msix,
			      bool per_vq_vectors)
{
	struct virtio_pci_device *vp_dev = FUNC6(vdev);
	u16 msix_vec;
	int i, err, nvectors, allocated_vectors;

	if (!use_msix) {
		/* Old style: one normal interrupt for change and all vqs. */
		err = FUNC9(vdev);
		if (err)
			goto error_request;
	} else {
		if (per_vq_vectors) {
			/* Best option: one for change interrupt, one per vq. */
			nvectors = 1;
			for (i = 0; i < nvqs; ++i)
				if (callbacks[i])
					++nvectors;
		} else {
			/* Second best: one for change, shared for all vqs. */
			nvectors = 2;
		}

		err = FUNC10(vdev, nvectors, per_vq_vectors);
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
		vqs[i] = FUNC4(vdev, i, callbacks[i], names[i], msix_vec);
		if (FUNC0(vqs[i])) {
			err = FUNC1(vqs[i]);
			goto error_find;
		}

		if (!vp_dev->per_vq_vectors || msix_vec == VIRTIO_MSI_NO_VECTOR)
			continue;

		/* allocate per-vq irq if available and necessary */
		FUNC5(vp_dev->msix_names[msix_vec],
			 sizeof *vp_dev->msix_names,
			 "%s-%s",
			 FUNC2(&vp_dev->vdev.dev), names[i]);
		err = FUNC3(vp_dev->msix_entries[msix_vec].vector,
				  vring_interrupt, 0,
				  vp_dev->msix_names[msix_vec],
				  vqs[i]);
		if (err) {
			FUNC7(vqs[i]);
			goto error_find;
		}
	}
	return 0;

error_find:
	FUNC8(vdev);

error_request:
	return err;
}