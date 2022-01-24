#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct virtio_device {TYPE_1__* config; struct virtio_balloon* priv; } ;
struct virtio_balloon {int /*<<< orphan*/  tell_host_first; int /*<<< orphan*/  thread; scalar_t__ need_stats_update; struct virtio_device* vdev; int /*<<< orphan*/  config_change; scalar_t__ num_pages; int /*<<< orphan*/  pages; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* del_vqs ) (struct virtio_device*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_F_MUST_TELL_HOST ; 
 int /*<<< orphan*/  balloon ; 
 int FUNC3 (struct virtio_balloon*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_balloon*) ; 
 struct virtio_balloon* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct virtio_balloon*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct virtio_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct virtio_device *vdev)
{
	struct virtio_balloon *vb;
	int err;

	vdev->priv = vb = FUNC6(sizeof(*vb), GFP_KERNEL);
	if (!vb) {
		err = -ENOMEM;
		goto out;
	}

	FUNC0(&vb->pages);
	vb->num_pages = 0;
	FUNC4(&vb->config_change);
	vb->vdev = vdev;
	vb->need_stats_update = 0;

	err = FUNC3(vb);
	if (err)
		goto out_free_vb;

	vb->thread = FUNC7(balloon, vb, "vballoon");
	if (FUNC1(vb->thread)) {
		err = FUNC2(vb->thread);
		goto out_del_vqs;
	}

	vb->tell_host_first
		= FUNC9(vdev, VIRTIO_BALLOON_F_MUST_TELL_HOST);

	return 0;

out_del_vqs:
	vdev->config->del_vqs(vdev);
out_free_vb:
	FUNC5(vb);
out:
	return err;
}