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
struct virtio_balloon {int need_stats_update; int /*<<< orphan*/  config_change; } ;

/* Variables and functions */
 struct virtio_balloon* FUNC0 (struct virtqueue*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct virtqueue *vq)
{
	struct virtio_balloon *vb;
	unsigned int len;

	vb = FUNC0(vq, &len);
	if (!vb)
		return;
	vb->need_stats_update = 1;
	FUNC1(&vb->config_change);
}