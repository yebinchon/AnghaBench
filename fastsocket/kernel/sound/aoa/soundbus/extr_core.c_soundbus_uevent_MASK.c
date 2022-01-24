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
struct of_device {TYPE_1__* node; } ;
struct soundbus_dev {int modalias; struct of_device ofdev; } ;
struct kobj_uevent_env {int buflen; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int name; int type; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct kobj_uevent_env*,char*,int,...) ; 
 char* FUNC1 (TYPE_1__*,char*,int*) ; 
 struct soundbus_dev* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct kobj_uevent_env *env)
{
	struct soundbus_dev * soundbus_dev;
	struct of_device * of;
	const char *compat;
	int retval = 0;
	int cplen, seen = 0;

	if (!dev)
		return -ENODEV;

	soundbus_dev = FUNC2(dev);
	if (!soundbus_dev)
		return -ENODEV;

	of = &soundbus_dev->ofdev;

	/* stuff we want to pass to /sbin/hotplug */
	retval = FUNC0(env, "OF_NAME=%s", of->node->name);
	if (retval)
		return retval;

	retval = FUNC0(env, "OF_TYPE=%s", of->node->type);
	if (retval)
		return retval;

	/* Since the compatible field can contain pretty much anything
	 * it's not really legal to split it out with commas. We split it
	 * up using a number of environment variables instead. */

	compat = FUNC1(of->node, "compatible", &cplen);
	while (compat && cplen > 0) {
		int tmp = env->buflen;
		retval = FUNC0(env, "OF_COMPATIBLE_%d=%s", seen, compat);
		if (retval)
			return retval;
		compat += env->buflen - tmp;
		cplen -= env->buflen - tmp;
		seen += 1;
	}

	retval = FUNC0(env, "OF_COMPATIBLE_N=%d", seen);
	if (retval)
		return retval;
	retval = FUNC0(env, "MODALIAS=%s", soundbus_dev->modalias);

	return retval;
}