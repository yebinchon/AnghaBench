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
struct hdq_data {int hdq_usecount; int /*<<< orphan*/  hdq_mutex; int /*<<< orphan*/  hdq_fck; int /*<<< orphan*/  hdq_ick; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  OMAP_HDQ_CTRL_STATUS ; 
 int OMAP_HDQ_CTRL_STATUS_CLOCKENABLE ; 
 int OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK ; 
 int /*<<< orphan*/  OMAP_HDQ_INT_STATUS ; 
 int OMAP_HDQ_MAX_USER ; 
 int /*<<< orphan*/  OMAP_HDQ_SYSCONFIG ; 
 int OMAP_HDQ_SYSCONFIG_AUTOIDLE ; 
 int /*<<< orphan*/  OMAP_HDQ_SYSSTATUS ; 
 int OMAP_HDQ_SYSSTATUS_RESETDONE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC0 (struct hdq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct hdq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hdq_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct hdq_data *hdq_data)
{
	int ret = 0;

	ret = FUNC7(&hdq_data->hdq_mutex);
	if (ret < 0) {
		ret = -EINTR;
		goto rtn;
	}

	if (OMAP_HDQ_MAX_USER == hdq_data->hdq_usecount) {
		FUNC4(hdq_data->dev, "attempt to exceed the max use count");
		ret = -EINVAL;
		goto out;
	} else {
		hdq_data->hdq_usecount++;
		FUNC9(THIS_MODULE);
		if (1 == hdq_data->hdq_usecount) {
			if (FUNC2(hdq_data->hdq_ick)) {
				FUNC4(hdq_data->dev, "Can not enable ick\n");
				ret = -ENODEV;
				goto clk_err;
			}
			if (FUNC2(hdq_data->hdq_fck)) {
				FUNC4(hdq_data->dev, "Can not enable fck\n");
				FUNC1(hdq_data->hdq_ick);
				ret = -ENODEV;
				goto clk_err;
			}

			/* make sure HDQ is out of reset */
			if (!(FUNC5(hdq_data, OMAP_HDQ_SYSSTATUS) &
				OMAP_HDQ_SYSSTATUS_RESETDONE)) {
				ret = FUNC0(hdq_data);
				if (ret)
					/* back up the count */
					hdq_data->hdq_usecount--;
			} else {
				/* select HDQ mode & enable clocks */
				FUNC6(hdq_data, OMAP_HDQ_CTRL_STATUS,
					OMAP_HDQ_CTRL_STATUS_CLOCKENABLE |
					OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK);
				FUNC6(hdq_data, OMAP_HDQ_SYSCONFIG,
					OMAP_HDQ_SYSCONFIG_AUTOIDLE);
				FUNC5(hdq_data, OMAP_HDQ_INT_STATUS);
			}
		}
	}

clk_err:
	FUNC3(hdq_data->hdq_ick);
	FUNC3(hdq_data->hdq_fck);
out:
	FUNC8(&hdq_data->hdq_mutex);
rtn:
	return ret;
}