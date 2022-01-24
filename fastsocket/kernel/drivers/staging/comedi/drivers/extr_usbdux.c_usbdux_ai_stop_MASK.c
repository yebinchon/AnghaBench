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
struct usbduxsub {scalar_t__ ai_cmd_running; TYPE_1__* interface; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct usbduxsub*) ; 

__attribute__((used)) static int FUNC3(struct usbduxsub *this_usbduxsub, int do_unlink)
{
	int ret = 0;

	if (!this_usbduxsub) {
		FUNC1(&this_usbduxsub->interface->dev,
			"comedi?: usbdux_ai_stop: this_usbduxsub=NULL!\n");
		return -EFAULT;
	}
	FUNC0(&this_usbduxsub->interface->dev, "comedi: usbdux_ai_stop\n");

	if (do_unlink) {
		/* stop aquistion */
		ret = FUNC2(this_usbduxsub);
	}

	this_usbduxsub->ai_cmd_running = 0;

	return ret;
}