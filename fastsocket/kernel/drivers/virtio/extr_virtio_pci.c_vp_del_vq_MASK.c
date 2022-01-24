#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct virtqueue {struct virtio_pci_vq_info* priv; int /*<<< orphan*/  vdev; } ;
struct virtio_pci_vq_info {int /*<<< orphan*/  queue; int /*<<< orphan*/  num; int /*<<< orphan*/  queue_index; int /*<<< orphan*/  node; } ;
struct virtio_pci_device {scalar_t__ ioaddr; scalar_t__ msix_enabled; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIRTIO_MSI_NO_VECTOR ; 
 scalar_t__ VIRTIO_MSI_QUEUE_VECTOR ; 
 scalar_t__ VIRTIO_PCI_ISR ; 
 scalar_t__ VIRTIO_PCI_QUEUE_PFN ; 
 scalar_t__ VIRTIO_PCI_QUEUE_SEL ; 
 int /*<<< orphan*/  VIRTIO_PCI_VRING_ALIGN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_pci_vq_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct virtio_pci_device* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct virtqueue *vq)
{
	struct virtio_pci_device *vp_dev = FUNC9(vq->vdev);
	struct virtio_pci_vq_info *info = vq->priv;
	unsigned long flags, size;

	FUNC7(&vp_dev->lock, flags);
	FUNC6(&info->node);
	FUNC8(&vp_dev->lock, flags);

	FUNC3(info->queue_index, vp_dev->ioaddr + VIRTIO_PCI_QUEUE_SEL);

	if (vp_dev->msix_enabled) {
		FUNC3(VIRTIO_MSI_NO_VECTOR,
			  vp_dev->ioaddr + VIRTIO_MSI_QUEUE_VECTOR);
		/* Flush the write out to device */
		FUNC2(vp_dev->ioaddr + VIRTIO_PCI_ISR);
	}

	FUNC10(vq);

	/* Select and deactivate the queue */
	FUNC4(0, vp_dev->ioaddr + VIRTIO_PCI_QUEUE_PFN);

	size = FUNC0(FUNC11(info->num, VIRTIO_PCI_VRING_ALIGN));
	FUNC1(info->queue, size);
	FUNC5(info);
}