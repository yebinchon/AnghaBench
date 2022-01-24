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
struct vhost_virtqueue {scalar_t__ handle_kick; int /*<<< orphan*/  poll; int /*<<< orphan*/  mutex; struct vhost_dev* dev; int /*<<< orphan*/ * ubuf_info; int /*<<< orphan*/ * heads; int /*<<< orphan*/ * indirect; int /*<<< orphan*/ * log; } ;
struct vhost_dev {int nvqs; struct vhost_virtqueue* vqs; int /*<<< orphan*/ * worker; int /*<<< orphan*/  work_list; int /*<<< orphan*/  work_lock; int /*<<< orphan*/ * mm; int /*<<< orphan*/ * memory; int /*<<< orphan*/ * log_file; int /*<<< orphan*/ * log_ctx; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,struct vhost_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct vhost_dev*,struct vhost_virtqueue*) ; 

long FUNC5(struct vhost_dev *dev,
		    struct vhost_virtqueue *vqs, int nvqs)
{
	int i;

	dev->vqs = vqs;
	dev->nvqs = nvqs;
	FUNC1(&dev->mutex);
	dev->log_ctx = NULL;
	dev->log_file = NULL;
	dev->memory = NULL;
	dev->mm = NULL;
	FUNC2(&dev->work_lock);
	FUNC0(&dev->work_list);
	dev->worker = NULL;

	for (i = 0; i < dev->nvqs; ++i) {
		dev->vqs[i].log = NULL;
		dev->vqs[i].indirect = NULL;
		dev->vqs[i].heads = NULL;
		dev->vqs[i].ubuf_info = NULL;
		dev->vqs[i].dev = dev;
		FUNC1(&dev->vqs[i].mutex);
		FUNC4(dev, dev->vqs + i);
		if (dev->vqs[i].handle_kick)
			FUNC3(&dev->vqs[i].poll,
					dev->vqs[i].handle_kick, POLLIN, dev);
	}

	return 0;
}