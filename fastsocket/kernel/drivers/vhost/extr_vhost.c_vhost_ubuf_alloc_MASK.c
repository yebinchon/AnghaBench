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
struct vhost_virtqueue {int dummy; } ;
struct vhost_ubuf_ref {struct vhost_virtqueue* vq; int /*<<< orphan*/  wait; int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct vhost_ubuf_ref* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vhost_ubuf_ref* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct vhost_ubuf_ref *FUNC4(struct vhost_virtqueue *vq,
					bool zcopy)
{
	struct vhost_ubuf_ref *ubufs;
	/* No zero copy backend? Nothing to count. */
	if (!zcopy)
		return NULL;
	ubufs = FUNC2(sizeof *ubufs, GFP_KERNEL);
	if (!ubufs)
		return FUNC0(-ENOMEM);
	FUNC3(&ubufs->kref);
	FUNC1(&ubufs->wait);
	ubufs->vq = vq;
	return ubufs;
}