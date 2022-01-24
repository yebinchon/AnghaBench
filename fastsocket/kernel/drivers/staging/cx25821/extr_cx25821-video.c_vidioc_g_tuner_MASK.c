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
struct v4l2_tuner {scalar_t__ index; int rangehigh; int signal; int /*<<< orphan*/  capability; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct file {int dummy; } ;
struct cx25821_fh {struct cx25821_dev* dev; } ;
struct cx25821_dev {scalar_t__ tuner_type; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ UNSET ; 
 int /*<<< orphan*/  V4L2_TUNER_ANALOG_TV ; 
 int /*<<< orphan*/  V4L2_TUNER_CAP_NORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int) ; 

int FUNC2(struct file *file, void *priv, struct v4l2_tuner *t)
{
	struct cx25821_dev *dev = ((struct cx25821_fh *)priv)->dev;

	if (FUNC1(UNSET == dev->tuner_type))
		return -EINVAL;
	if (0 != t->index)
		return -EINVAL;

	FUNC0(t->name, "Television");
	t->type = V4L2_TUNER_ANALOG_TV;
	t->capability = V4L2_TUNER_CAP_NORM;
	t->rangehigh = 0xffffffffUL;

	t->signal = 0xffff;	/* LOCKED */
	return 0;
}