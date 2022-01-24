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
struct virtio_pci_device {scalar_t__ ioaddr; } ;
struct virtio_device {int /*<<< orphan*/ * features; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ VIRTIO_PCI_GUEST_FEATURES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct virtio_pci_device* FUNC3 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_device*) ; 

__attribute__((used)) static void FUNC5(struct virtio_device *vdev)
{
	struct virtio_pci_device *vp_dev = FUNC3(vdev);

	/* Give virtio_ring a chance to accept features. */
	FUNC4(vdev);

	/* We only support 32 feature bits. */
	FUNC1(FUNC0(vdev->features) != 1);
	FUNC2(vdev->features[0], vp_dev->ioaddr+VIRTIO_PCI_GUEST_FEATURES);
}