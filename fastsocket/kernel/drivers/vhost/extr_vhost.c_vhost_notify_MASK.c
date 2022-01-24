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
struct vhost_virtqueue {scalar_t__ avail_idx; scalar_t__ last_avail_idx; int signalled_used; int signalled_used_valid; int last_used_idx; TYPE_1__* avail; } ;
struct vhost_dev {int dummy; } ;
typedef  int __u16 ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_F_NOTIFY_ON_EMPTY ; 
 int /*<<< orphan*/  VIRTIO_RING_F_EVENT_IDX ; 
 int VRING_AVAIL_F_NO_INTERRUPT ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct vhost_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vhost_virtqueue*) ; 
 int /*<<< orphan*/  FUNC6 (struct vhost_virtqueue*,char*) ; 
 int FUNC7 (int,int,int) ; 

__attribute__((used)) static bool FUNC8(struct vhost_dev *dev, struct vhost_virtqueue *vq)
{
	__u16 old, new, event;
	bool v;
	/* Flush out used index updates. This is paired
	 * with the barrier that the Guest executes when enabling
	 * interrupts. */
	FUNC2();

	if (FUNC4(dev, VIRTIO_F_NOTIFY_ON_EMPTY) &&
	    FUNC3(vq->avail_idx == vq->last_avail_idx))
		return true;

	if (!FUNC4(dev, VIRTIO_RING_F_EVENT_IDX)) {
		__u16 flags;
		if (FUNC0(flags, &vq->avail->flags)) {
			FUNC6(vq, "Failed to get flags");
			return true;
		}
		return !(flags & VRING_AVAIL_F_NO_INTERRUPT);
	}
	old = vq->signalled_used;
	v = vq->signalled_used_valid;
	new = vq->signalled_used = vq->last_used_idx;
	vq->signalled_used_valid = true;

	if (FUNC3(!v))
		return true;

	if (FUNC1(event, FUNC5(vq))) {
		FUNC6(vq, "Failed to get used event idx");
		return true;
	}
	return FUNC7(event, new, old);
}