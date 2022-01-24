#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct virtio_pci_device {int intx_enabled; TYPE_1__* pci_dev; } ;
struct virtio_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct virtio_pci_device*) ; 
 struct virtio_pci_device* FUNC2 (struct virtio_device*) ; 
 int /*<<< orphan*/  vp_interrupt ; 

__attribute__((used)) static int FUNC3(struct virtio_device *vdev)
{
	int err;
	struct virtio_pci_device *vp_dev = FUNC2(vdev);

	err = FUNC1(vp_dev->pci_dev->irq, vp_interrupt,
			  IRQF_SHARED, FUNC0(&vdev->dev), vp_dev);
	if (!err)
		vp_dev->intx_enabled = 1;
	return err;
}