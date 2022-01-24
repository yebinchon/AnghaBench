#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vq_callback_t ;
struct virtqueue {int dummy; } ;
struct virtio_balloon {struct virtqueue* stats_vq; int /*<<< orphan*/  stats; TYPE_2__* vdev; struct virtqueue* deflate_vq; struct virtqueue* inflate_vq; } ;
struct scatterlist {int dummy; } ;
struct TYPE_5__ {TYPE_1__* config; } ;
struct TYPE_4__ {int (* find_vqs ) (TYPE_2__*,int,struct virtqueue**,int /*<<< orphan*/ **,char const**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_F_STATS_VQ ; 
 int /*<<< orphan*/ * balloon_ack ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * stats_request ; 
 int FUNC2 (TYPE_2__*,int,struct virtqueue**,int /*<<< orphan*/ **,char const**) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct virtqueue*,struct scatterlist*,int,int /*<<< orphan*/ ,struct virtio_balloon*) ; 
 int /*<<< orphan*/  FUNC5 (struct virtqueue*) ; 

__attribute__((used)) static int FUNC6(struct virtio_balloon *vb)
{
	struct virtqueue *vqs[3];
	vq_callback_t *callbacks[] = { balloon_ack, balloon_ack, stats_request };
	const char *names[] = { "inflate", "deflate", "stats" };
	int err, nvqs;

	/*
	 * We expect two virtqueues: inflate and deflate, and
	 * optionally stat.
	 */
	nvqs = FUNC3(vb->vdev, VIRTIO_BALLOON_F_STATS_VQ) ? 3 : 2;
	err = vb->vdev->config->find_vqs(vb->vdev, nvqs, vqs, callbacks, names);
	if (err)
		return err;

	vb->inflate_vq = vqs[0];
	vb->deflate_vq = vqs[1];
	if (FUNC3(vb->vdev, VIRTIO_BALLOON_F_STATS_VQ)) {
		struct scatterlist sg;
		vb->stats_vq = vqs[2];

		/*
		 * Prime this virtqueue with one buffer so the hypervisor can
		 * use it to signal us later.
		 */
		FUNC1(&sg, vb->stats, sizeof vb->stats);
		if (FUNC4(vb->stats_vq,
						  &sg, 1, 0, vb) < 0)
			FUNC0();
		FUNC5(vb->stats_vq);
	}
	return 0;
}