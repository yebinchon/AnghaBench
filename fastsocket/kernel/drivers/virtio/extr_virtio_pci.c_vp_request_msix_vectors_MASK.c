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
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct virtio_pci_device {int msix_vectors; int msix_enabled; unsigned int msix_used_vectors; int /*<<< orphan*/ * msix_names; TYPE_2__* msix_entries; scalar_t__ ioaddr; int /*<<< orphan*/  pci_dev; TYPE_1__ vdev; } ;
struct virtio_device {int dummy; } ;
struct TYPE_4__ {unsigned int entry; int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ VIRTIO_MSI_CONFIG_VECTOR ; 
 unsigned int VIRTIO_MSI_NO_VECTOR ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct virtio_pci_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 struct virtio_pci_device* FUNC7 (struct virtio_device*) ; 
 int /*<<< orphan*/  vp_config_changed ; 
 int /*<<< orphan*/  FUNC8 (struct virtio_device*) ; 
 int /*<<< orphan*/  vp_vring_interrupt ; 

__attribute__((used)) static int FUNC9(struct virtio_device *vdev, int nvectors,
				   bool per_vq_vectors)
{
	struct virtio_pci_device *vp_dev = FUNC7(vdev);
	const char *name = FUNC0(&vp_dev->vdev.dev);
	unsigned i, v;
	int err = -ENOMEM;

	vp_dev->msix_entries = FUNC3(nvectors * sizeof *vp_dev->msix_entries,
				       GFP_KERNEL);
	if (!vp_dev->msix_entries)
		goto error;
	vp_dev->msix_names = FUNC3(nvectors * sizeof *vp_dev->msix_names,
				     GFP_KERNEL);
	if (!vp_dev->msix_names)
		goto error;

	for (i = 0; i < nvectors; ++i)
		vp_dev->msix_entries[i].entry = i;

	/* pci_enable_msix returns positive if we can't get this many. */
	err = FUNC4(vp_dev->pci_dev, vp_dev->msix_entries, nvectors);
	if (err > 0)
		err = -ENOSPC;
	if (err)
		goto error;
	vp_dev->msix_vectors = nvectors;
	vp_dev->msix_enabled = 1;

	/* Set the vector used for configuration */
	v = vp_dev->msix_used_vectors;
	FUNC6(vp_dev->msix_names[v], sizeof *vp_dev->msix_names,
		 "%s-config", name);
	err = FUNC5(vp_dev->msix_entries[v].vector,
			  vp_config_changed, 0, vp_dev->msix_names[v],
			  vp_dev);
	if (err)
		goto error;
	++vp_dev->msix_used_vectors;

	FUNC2(v, vp_dev->ioaddr + VIRTIO_MSI_CONFIG_VECTOR);
	/* Verify we had enough resources to assign the vector */
	v = FUNC1(vp_dev->ioaddr + VIRTIO_MSI_CONFIG_VECTOR);
	if (v == VIRTIO_MSI_NO_VECTOR) {
		err = -EBUSY;
		goto error;
	}

	if (!per_vq_vectors) {
		/* Shared vector for all VQs */
		v = vp_dev->msix_used_vectors;
		FUNC6(vp_dev->msix_names[v], sizeof *vp_dev->msix_names,
			 "%s-virtqueues", name);
		err = FUNC5(vp_dev->msix_entries[v].vector,
				  vp_vring_interrupt, 0, vp_dev->msix_names[v],
				  vp_dev);
		if (err)
			goto error;
		++vp_dev->msix_used_vectors;
	}
	return 0;
error:
	FUNC8(vdev);
	return err;
}