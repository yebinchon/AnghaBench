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
struct wlp {int /*<<< orphan*/  nbmutex; TYPE_2__* rc; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wlp*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,struct wlp*) ; 
 int /*<<< orphan*/  wlp_add_neighbor_helper ; 
 int FUNC5 (struct wlp*) ; 

ssize_t FUNC6(struct wlp *wlp)
{
	int result = 0;
	struct device *dev = &wlp->rc->uwb_dev.dev;

	FUNC2(&wlp->nbmutex);
	/* Clear current neighborhood cache. */
	FUNC0(wlp);
	/* Determine which devices in neighborhood. Repopulate cache. */
	result = FUNC4(wlp->rc, wlp_add_neighbor_helper, wlp);
	if (result < 0) {
		/* May have partial neighbor information, release all. */
		FUNC0(wlp);
		goto error_dev_for_each;
	}
	/* Discover the properties of devices in neighborhood. */
	result = FUNC5(wlp);
	/* In case of failure we still print our partial results. */
	if (result < 0) {
		FUNC1(dev, "Unable to fully discover neighborhood. \n");
		result = 0;
	}
error_dev_for_each:
	FUNC3(&wlp->nbmutex);
	return result;
}