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
typedef  scalar_t__ u8 ;
struct virtio_pci_device {scalar_t__ ioaddr; } ;
struct virtio_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ VIRTIO_PCI_STATUS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 struct virtio_pci_device* FUNC2 (struct virtio_device*) ; 

__attribute__((used)) static void FUNC3(struct virtio_device *vdev, u8 status)
{
	struct virtio_pci_device *vp_dev = FUNC2(vdev);
	/* We should never be setting status to 0. */
	FUNC0(status == 0);
	FUNC1(status, vp_dev->ioaddr + VIRTIO_PCI_STATUS);
}