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
struct TYPE_4__ {unsigned int num; TYPE_1__* avail; } ;
struct vring_virtqueue {unsigned int num_free; TYPE_2__ vring; void** data; } ;
struct virtqueue {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vring_virtqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct vring_virtqueue*) ; 
 int /*<<< orphan*/  FUNC3 (struct vring_virtqueue*,unsigned int) ; 
 struct vring_virtqueue* FUNC4 (struct virtqueue*) ; 

void *FUNC5(struct virtqueue *_vq)
{
	struct vring_virtqueue *vq = FUNC4(_vq);
	unsigned int i;
	void *buf;

	FUNC2(vq);

	for (i = 0; i < vq->vring.num; i++) {
		if (!vq->data[i])
			continue;
		/* detach_buf clears data, so grab it now. */
		buf = vq->data[i];
		FUNC3(vq, i);
		vq->vring.avail->idx--;
		FUNC1(vq);
		return buf;
	}
	/* That should have freed everything. */
	FUNC0(vq->num_free != vq->vring.num);

	FUNC1(vq);
	return NULL;
}