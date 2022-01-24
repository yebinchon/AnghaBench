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
struct virtio_device {TYPE_1__* config; struct virtio_chan* priv; } ;
struct virtio_chan {int initialized; int /*<<< orphan*/  inuse; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* del_vqs ) (struct virtio_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_device*) ; 

__attribute__((used)) static void FUNC2(struct virtio_device *vdev)
{
	struct virtio_chan *chan = vdev->priv;

	FUNC0(chan->inuse);

	if (chan->initialized) {
		vdev->config->del_vqs(vdev);
		chan->initialized = false;
	}
}