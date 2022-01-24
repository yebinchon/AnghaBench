#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * bus; } ;
struct virtio_device {int index; TYPE_2__ dev; int /*<<< orphan*/  vqs; TYPE_1__* config; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* reset ) (struct virtio_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VIRTIO_CONFIG_S_ACKNOWLEDGE ; 
 int /*<<< orphan*/  VIRTIO_CONFIG_S_FAILED ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_device*) ; 
 int /*<<< orphan*/  virtio_bus ; 
 int /*<<< orphan*/  virtio_index_ida ; 

int FUNC6(struct virtio_device *dev)
{
	int err;

	dev->dev.bus = &virtio_bus;

	/* Assign a unique device index and hence name. */
	err = FUNC4(&virtio_index_ida, 0, 0, GFP_KERNEL);
	if (err < 0)
		goto out;

	dev->index = err;
	FUNC2(&dev->dev, "virtio%u", dev->index);

	/* We always start by resetting the device, in case a previous
	 * driver messed it up.  This also tests that code path a little. */
	dev->config->reset(dev);

	/* Acknowledge that we've seen the device. */
	FUNC1(dev, VIRTIO_CONFIG_S_ACKNOWLEDGE);

	FUNC0(&dev->vqs);

	/* device_register() causes the bus infrastructure to look for a
	 * matching driver. */
	err = FUNC3(&dev->dev);
out:
	if (err)
		FUNC1(dev, VIRTIO_CONFIG_S_FAILED);
	return err;
}