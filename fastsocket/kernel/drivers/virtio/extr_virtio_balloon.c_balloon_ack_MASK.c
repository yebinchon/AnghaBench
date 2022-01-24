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
struct virtqueue {int dummy; } ;
struct virtio_balloon {int /*<<< orphan*/  acked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct virtio_balloon* FUNC1 (struct virtqueue*,unsigned int*) ; 

__attribute__((used)) static void FUNC2(struct virtqueue *vq)
{
	struct virtio_balloon *vb;
	unsigned int len;

	vb = FUNC1(vq, &len);
	if (vb)
		FUNC0(&vb->acked);
}