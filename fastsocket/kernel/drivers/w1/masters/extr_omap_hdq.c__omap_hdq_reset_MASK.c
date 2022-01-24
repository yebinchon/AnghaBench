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
typedef  int /*<<< orphan*/  u8 ;
struct hdq_data {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_HDQ_CTRL_STATUS ; 
 int OMAP_HDQ_CTRL_STATUS_CLOCKENABLE ; 
 int OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK ; 
 int /*<<< orphan*/  OMAP_HDQ_FLAG_SET ; 
 int /*<<< orphan*/  OMAP_HDQ_SYSCONFIG ; 
 int OMAP_HDQ_SYSCONFIG_AUTOIDLE ; 
 int OMAP_HDQ_SYSCONFIG_SOFTRESET ; 
 int /*<<< orphan*/  OMAP_HDQ_SYSSTATUS ; 
 int /*<<< orphan*/  OMAP_HDQ_SYSSTATUS_RESETDONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hdq_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct hdq_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct hdq_data *hdq_data)
{
	int ret;
	u8 tmp_status;

	FUNC1(hdq_data, OMAP_HDQ_SYSCONFIG, OMAP_HDQ_SYSCONFIG_SOFTRESET);
	/*
	 * Select HDQ mode & enable clocks.
	 * It is observed that INT flags can't be cleared via a read and GO/INIT
	 * won't return to zero if interrupt is disabled. So we always enable
	 * interrupt.
	 */
	FUNC1(hdq_data, OMAP_HDQ_CTRL_STATUS,
		OMAP_HDQ_CTRL_STATUS_CLOCKENABLE |
		OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK);

	/* wait for reset to complete */
	ret = FUNC2(hdq_data, OMAP_HDQ_SYSSTATUS,
		OMAP_HDQ_SYSSTATUS_RESETDONE, OMAP_HDQ_FLAG_SET, &tmp_status);
	if (ret)
		FUNC0(hdq_data->dev, "timeout waiting HDQ reset, %x",
				tmp_status);
	else {
		FUNC1(hdq_data, OMAP_HDQ_CTRL_STATUS,
			OMAP_HDQ_CTRL_STATUS_CLOCKENABLE |
			OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK);
		FUNC1(hdq_data, OMAP_HDQ_SYSCONFIG,
			OMAP_HDQ_SYSCONFIG_AUTOIDLE);
	}

	return ret;
}