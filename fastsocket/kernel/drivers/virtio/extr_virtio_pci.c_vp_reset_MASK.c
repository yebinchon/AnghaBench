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
struct virtio_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ VIRTIO_PCI_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct virtio_pci_device* FUNC1 (struct virtio_device*) ; 

__attribute__((used)) static void FUNC2(struct virtio_device *vdev)
{
	struct virtio_pci_device *vp_dev = FUNC1(vdev);
	/* 0 status means a reset. */
	FUNC0(0, vp_dev->ioaddr + VIRTIO_PCI_STATUS);
}