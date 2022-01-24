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
struct virtio_balloon {int /*<<< orphan*/  stats; struct virtqueue* stats_vq; scalar_t__ need_stats_update; } ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct virtio_balloon*) ; 
 scalar_t__ FUNC3 (struct virtqueue*,struct scatterlist*,int,int /*<<< orphan*/ ,struct virtio_balloon*) ; 
 int /*<<< orphan*/  FUNC4 (struct virtqueue*) ; 

__attribute__((used)) static void FUNC5(struct virtio_balloon *vb)
{
	struct virtqueue *vq;
	struct scatterlist sg;

	vb->need_stats_update = 0;
	FUNC2(vb);

	vq = vb->stats_vq;
	FUNC1(&sg, vb->stats, sizeof(vb->stats));
	if (FUNC3(vq, &sg, 1, 0, vb) < 0)
		FUNC0();
	FUNC4(vq);
}