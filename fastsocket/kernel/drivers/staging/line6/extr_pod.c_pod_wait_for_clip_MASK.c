#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ value; int /*<<< orphan*/  wait; } ;
struct usb_line6_pod {TYPE_1__ clipping; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 struct usb_interface* FUNC5 (struct device*) ; 
 struct usb_line6_pod* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				 struct device_attribute *attr, char *buf)
{
	struct usb_interface *interface = FUNC5(dev);
	struct usb_line6_pod *pod = FUNC6(interface);
	int err = 0;
	FUNC0(wait, current);
	pod->clipping.value = 0;
	FUNC1(&pod->clipping.wait, &wait);
	current->state = TASK_INTERRUPTIBLE;

	while (pod->clipping.value == 0) {
		if (FUNC4(current)) {
			err = -ERESTARTSYS;
			break;
		} else
			FUNC3();
	}

	current->state = TASK_RUNNING;
	FUNC2(&pod->clipping.wait, &wait);
	return err;
}