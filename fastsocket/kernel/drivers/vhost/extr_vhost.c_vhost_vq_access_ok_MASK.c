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
struct vhost_virtqueue {int /*<<< orphan*/  log_base; int /*<<< orphan*/  dev; int /*<<< orphan*/  used; int /*<<< orphan*/  avail; int /*<<< orphan*/  desc; int /*<<< orphan*/  num; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct vhost_virtqueue*,int /*<<< orphan*/ ) ; 

int FUNC2(struct vhost_virtqueue *vq)
{
	return FUNC0(vq->dev, vq->num, vq->desc, vq->avail, vq->used) &&
		FUNC1(vq->dev, vq, vq->log_base);
}