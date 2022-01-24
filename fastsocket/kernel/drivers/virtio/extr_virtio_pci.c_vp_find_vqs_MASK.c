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
typedef  int /*<<< orphan*/  vq_callback_t ;
struct virtqueue {int dummy; } ;
struct virtio_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct virtio_device*,unsigned int,struct virtqueue**,int /*<<< orphan*/ **,char const**,int,int) ; 

__attribute__((used)) static int FUNC1(struct virtio_device *vdev, unsigned nvqs,
		       struct virtqueue *vqs[],
		       vq_callback_t *callbacks[],
		       const char *names[])
{
	int err;

	/* Try MSI-X with one vector per queue. */
	err = FUNC0(vdev, nvqs, vqs, callbacks, names, true, true);
	if (!err)
		return 0;
	/* Fallback: MSI-X with one vector for config, one shared for queues. */
	err = FUNC0(vdev, nvqs, vqs, callbacks, names,
				 true, false);
	if (!err)
		return 0;
	/* Finally fall back to regular interrupts. */
	return FUNC0(vdev, nvqs, vqs, callbacks, names,
				  false, false);
}