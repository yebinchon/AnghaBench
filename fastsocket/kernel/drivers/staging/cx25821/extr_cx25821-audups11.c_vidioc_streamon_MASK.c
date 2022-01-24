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
struct file {int dummy; } ;
struct cx25821_fh {scalar_t__ type; struct cx25821_dev* dev; } ;
struct cx25821_dev {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  RESOURCE_VIDEO11 ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (struct cx25821_fh*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx25821_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cx25821_dev*,struct cx25821_fh*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv, enum v4l2_buf_type i)
{
	struct cx25821_fh *fh = priv;
	struct cx25821_dev *dev = fh->dev;

	if (FUNC3(fh->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)) {
		return -EINVAL;
	}

	if (FUNC3(i != fh->type)) {
		return -EINVAL;
	}

	if (FUNC3(!FUNC2(dev, fh, FUNC1(fh, RESOURCE_VIDEO11)))) {
		return -EBUSY;
	}

	return FUNC4(FUNC0(fh));
}