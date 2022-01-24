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
typedef  scalar_t__ u16 ;
struct virtqueue {struct virtio_pci_vq_info* priv; } ;
struct virtio_pci_vq_info {unsigned int queue_index; int /*<<< orphan*/ * queue; int /*<<< orphan*/  node; struct virtqueue* vq; scalar_t__ num; scalar_t__ msix_vector; } ;
struct virtio_pci_device {scalar_t__ ioaddr; int /*<<< orphan*/  lock; int /*<<< orphan*/  virtqueues; } ;
struct virtio_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct virtqueue* FUNC0 (int) ; 
 int GFP_KERNEL ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ VIRTIO_MSI_NO_VECTOR ; 
 scalar_t__ VIRTIO_MSI_QUEUE_VECTOR ; 
 int VIRTIO_PCI_QUEUE_ADDR_SHIFT ; 
 scalar_t__ VIRTIO_PCI_QUEUE_NUM ; 
 scalar_t__ VIRTIO_PCI_QUEUE_PFN ; 
 scalar_t__ VIRTIO_PCI_QUEUE_SEL ; 
 int /*<<< orphan*/  VIRTIO_PCI_VRING_ALIGN ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/ * FUNC2 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct virtio_pci_vq_info*) ; 
 struct virtio_pci_vq_info* FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 struct virtio_pci_device* FUNC13 (struct virtio_device*) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vp_notify ; 
 int /*<<< orphan*/  FUNC15 (struct virtqueue*) ; 
 struct virtqueue* FUNC16 (scalar_t__,int /*<<< orphan*/ ,struct virtio_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (struct virtqueue*),char const*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct virtqueue *FUNC18(struct virtio_device *vdev, unsigned index,
				  void (*callback)(struct virtqueue *vq),
				  const char *name,
				  u16 msix_vec)
{
	struct virtio_pci_device *vp_dev = FUNC13(vdev);
	struct virtio_pci_vq_info *info;
	struct virtqueue *vq;
	unsigned long flags, size;
	u16 num;
	int err;

	/* Select the queue we're interested in */
	FUNC6(index, vp_dev->ioaddr + VIRTIO_PCI_QUEUE_SEL);

	/* Check if queue is either not available or already active. */
	num = FUNC4(vp_dev->ioaddr + VIRTIO_PCI_QUEUE_NUM);
	if (!num || FUNC5(vp_dev->ioaddr + VIRTIO_PCI_QUEUE_PFN))
		return FUNC0(-ENOENT);

	/* allocate and fill out our structure the represents an active
	 * queue */
	info = FUNC9(sizeof(struct virtio_pci_vq_info), GFP_KERNEL);
	if (!info)
		return FUNC0(-ENOMEM);

	info->queue_index = index;
	info->num = num;
	info->msix_vector = msix_vec;

	size = FUNC1(FUNC17(num, VIRTIO_PCI_VRING_ALIGN));
	info->queue = FUNC2(size, GFP_KERNEL|__GFP_ZERO);
	if (info->queue == NULL) {
		err = -ENOMEM;
		goto out_info;
	}

	/* activate the queue */
	FUNC7(FUNC14(info->queue) >> VIRTIO_PCI_QUEUE_ADDR_SHIFT,
		  vp_dev->ioaddr + VIRTIO_PCI_QUEUE_PFN);

	/* create the vring */
	vq = FUNC16(info->num, VIRTIO_PCI_VRING_ALIGN,
				 vdev, info->queue, vp_notify, callback, name);
	if (!vq) {
		err = -ENOMEM;
		goto out_activate_queue;
	}

	vq->priv = info;
	info->vq = vq;

	if (msix_vec != VIRTIO_MSI_NO_VECTOR) {
		FUNC6(msix_vec, vp_dev->ioaddr + VIRTIO_MSI_QUEUE_VECTOR);
		msix_vec = FUNC4(vp_dev->ioaddr + VIRTIO_MSI_QUEUE_VECTOR);
		if (msix_vec == VIRTIO_MSI_NO_VECTOR) {
			err = -EBUSY;
			goto out_assign;
		}
	}

	FUNC11(&vp_dev->lock, flags);
	FUNC10(&info->node, &vp_dev->virtqueues);
	FUNC12(&vp_dev->lock, flags);

	return vq;

out_assign:
	FUNC15(vq);
out_activate_queue:
	FUNC7(0, vp_dev->ioaddr + VIRTIO_PCI_QUEUE_PFN);
	FUNC3(info->queue, size);
out_info:
	FUNC8(info);
	return FUNC0(err);
}