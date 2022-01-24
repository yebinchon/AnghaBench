#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wlp {TYPE_2__* rc; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int FUNC0 (struct wlp*) ; 
 int /*<<< orphan*/  FUNC1 (struct wlp*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 

int FUNC3(struct wlp *wlp)
{
	int result;
	struct device *dev = &wlp->rc->uwb_dev.dev;

	result = FUNC0(wlp);
	if (result < 0) {
		FUNC2(dev, "WLP: Unable to allocate area for "
			"device information.\n");
		return result;
	}
	FUNC1(wlp);
	return 0;
}