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
struct TYPE_2__ {int /*<<< orphan*/  (* callback ) (TYPE_1__*) ;} ;
struct vring_virtqueue {TYPE_1__ vq; int /*<<< orphan*/  broken; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct vring_virtqueue*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct vring_virtqueue*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct vring_virtqueue* FUNC3 (void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

irqreturn_t FUNC5(int irq, void *_vq)
{
	struct vring_virtqueue *vq = FUNC3(_vq);

	if (!FUNC0(vq)) {
		FUNC1("virtqueue interrupt with no work for %p\n", vq);
		return IRQ_NONE;
	}

	if (FUNC4(vq->broken))
		return IRQ_HANDLED;

	FUNC1("virtqueue callback for %p (%p)\n", vq, vq->vq.callback);
	if (vq->vq.callback)
		vq->vq.callback(&vq->vq);

	return IRQ_HANDLED;
}