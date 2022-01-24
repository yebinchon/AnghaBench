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
typedef  scalar_t__ u16 ;
struct vhost_virtqueue {int used_flags; scalar_t__ avail_idx; TYPE_2__* avail; TYPE_1__* used; } ;
struct vhost_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  idx; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_RING_F_EVENT_IDX ; 
 int VRING_USED_F_NO_NOTIFY ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (struct vhost_virtqueue*) ; 
 int /*<<< orphan*/  FUNC3 (struct vhost_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vhost_virtqueue*,scalar_t__) ; 
 int FUNC5 (struct vhost_virtqueue*) ; 
 int /*<<< orphan*/  FUNC6 (struct vhost_virtqueue*,char*,int /*<<< orphan*/ *,int) ; 

bool FUNC7(struct vhost_dev *dev, struct vhost_virtqueue *vq)
{
	u16 avail_idx;
	int r;
	if (!(vq->used_flags & VRING_USED_F_NO_NOTIFY))
		return false;
	vq->used_flags &= ~VRING_USED_F_NO_NOTIFY;
	if (!FUNC3(dev, VIRTIO_RING_F_EVENT_IDX)) {
		r = FUNC5(vq);
		if (r) {
			FUNC6(vq, "Failed to enable notification at %p: %d\n",
			       &vq->used->flags, r);
			return false;
		}
	} else {
		r = FUNC4(vq, vq->avail_idx);
		if (r) {
			FUNC6(vq, "Failed to update avail event index at %p: %d\n",
			       FUNC2(vq), r);
			return false;
		}
	}
	/* They could have slipped one in as we were doing that: make
	 * sure it's written, then check again. */
	FUNC1();
	r = FUNC0(avail_idx, &vq->avail->idx);
	if (r) {
		FUNC6(vq, "Failed to check avail idx at %p: %d\n",
		       &vq->avail->idx, r);
		return false;
	}

	return avail_idx != vq->avail_idx;
}