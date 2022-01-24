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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct uwb_rc {int (* reset ) (struct uwb_rc*) ;TYPE_1__ uwb_dev; } ;
struct uwb_event {struct uwb_rc* rc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC4 (struct uwb_rc*) ; 

int FUNC5(struct uwb_event *evt)
{
	struct uwb_rc *rc = evt->rc;
	int ret;

	FUNC1(&rc->uwb_dev.dev, "resetting radio controller\n");
	ret = rc->reset(rc);
	if (ret < 0) {
		FUNC0(&rc->uwb_dev.dev, "failed to reset hardware: %d\n", ret);
		goto error;
	}
	return 0;
error:
	/* Nothing can be done except try the reset again. Wait a bit
	   to avoid reset loops during probe() or remove(). */
	FUNC2(1000);
	FUNC4(rc);
	return ret;
}