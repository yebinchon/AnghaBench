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
struct v4l2_frequency {int dummy; } ;
struct file {int dummy; } ;
struct cx25821_fh {int /*<<< orphan*/  prio; struct cx25821_dev* dev; } ;
struct cx25821_dev {int /*<<< orphan*/  prio; } ;

/* Variables and functions */
 int FUNC0 (struct cx25821_dev*,struct v4l2_frequency*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(struct file *file, void *priv, struct v4l2_frequency *f)
{
	struct cx25821_fh *fh = priv;
	struct cx25821_dev *dev = fh->dev;
	int err;

	if (fh) {
		err = FUNC1(&dev->prio, &fh->prio);
		if (0 != err)
			return err;
	}

	return FUNC0(dev, f);
}