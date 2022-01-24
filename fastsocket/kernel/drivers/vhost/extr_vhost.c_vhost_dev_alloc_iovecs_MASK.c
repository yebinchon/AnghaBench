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
struct vhost_dev {int nvqs; TYPE_1__* vqs; } ;
struct TYPE_2__ {void* ubuf_info; void* heads; void* log; void* indirect; } ;

/* Variables and functions */
 long ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int UIO_MAXIOV ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int vhost_zcopy_mask ; 

__attribute__((used)) static long FUNC2(struct vhost_dev *dev)
{
	int i;
	bool zcopy;

	for (i = 0; i < dev->nvqs; ++i) {
		dev->vqs[i].indirect = FUNC0(sizeof *dev->vqs[i].indirect *
					       UIO_MAXIOV, GFP_KERNEL);
		dev->vqs[i].log = FUNC0(sizeof *dev->vqs[i].log * UIO_MAXIOV,
					  GFP_KERNEL);
		dev->vqs[i].heads = FUNC0(sizeof *dev->vqs[i].heads *
					    UIO_MAXIOV, GFP_KERNEL);

		zcopy = vhost_zcopy_mask & (0x1 << i);
		if (zcopy)
			dev->vqs[i].ubuf_info =
				FUNC0(sizeof *dev->vqs[i].ubuf_info *
					UIO_MAXIOV, GFP_KERNEL);

		if (!dev->vqs[i].indirect || !dev->vqs[i].log ||
			!dev->vqs[i].heads ||
			(zcopy && !dev->vqs[i].ubuf_info))
			goto err_nomem;
	}
	return 0;
err_nomem:
	for (; i >= 0; --i)
		FUNC1(&dev->vqs[i]);
	return -ENOMEM;
}