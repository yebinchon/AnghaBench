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
struct vhost_virtqueue {scalar_t__ call_ctx; } ;
struct vhost_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (struct vhost_dev*,struct vhost_virtqueue*) ; 

void FUNC2(struct vhost_dev *dev, struct vhost_virtqueue *vq)
{
	/* Signal the Guest tell them we used something up. */
	if (vq->call_ctx && FUNC1(dev, vq))
		FUNC0(vq->call_ctx, 1);
}