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
struct vring_virtqueue {int /*<<< orphan*/  (* notify ) (struct virtqueue*) ;} ;
struct virtqueue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct virtqueue*) ; 
 struct vring_virtqueue* FUNC1 (struct virtqueue*) ; 

void FUNC2(struct virtqueue *_vq)
{
	struct vring_virtqueue *vq = FUNC1(_vq);

	/* Prod other side to tell it about changes. */
	vq->notify(_vq);
}