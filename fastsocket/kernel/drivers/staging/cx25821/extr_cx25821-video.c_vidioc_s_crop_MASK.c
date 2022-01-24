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
struct v4l2_crop {int dummy; } ;
struct file {int dummy; } ;
struct cx25821_fh {int /*<<< orphan*/  prio; struct cx25821_dev* dev; } ;
struct cx25821_dev {int /*<<< orphan*/  prio; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC1(struct file *file, void *priv, struct v4l2_crop *crop)
{
	struct cx25821_dev *dev = ((struct cx25821_fh *)priv)->dev;
	struct cx25821_fh *fh = priv;
	int err;

	if (fh) {
		err = FUNC0(&dev->prio, &fh->prio);
		if (0 != err)
			return err;
	}
	// vidioc_s_crop not supported
	return -EINVAL;
}