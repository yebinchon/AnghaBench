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
struct TYPE_4__ {TYPE_1__* used; } ;
struct vring_virtqueue {TYPE_2__ vring; } ;
struct virtqueue {int dummy; } ;
struct TYPE_3__ {scalar_t__ idx; } ;

/* Variables and functions */
 struct vring_virtqueue* FUNC0 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

bool FUNC2(struct virtqueue *_vq, unsigned last_used_idx)
{
	struct vring_virtqueue *vq = FUNC0(_vq);

	FUNC1();
	return (u16)last_used_idx != vq->vring.used->idx;
}