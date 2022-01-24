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
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct uwb_rc*) ; 
 int FUNC2 (struct uwb_rc*) ; 
 int FUNC3 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC4 (struct uwb_rc*) ; 
 int FUNC5 (struct uwb_rc*) ; 
 int FUNC6 (struct uwb_rc*) ; 
 int FUNC7 (struct uwb_rc*) ; 

__attribute__((used)) static int FUNC8(struct uwb_rc *rc)
{
	int result;
	struct device *dev = &rc->uwb_dev.dev;

	result = FUNC2(rc);
	if (result < 0) {
		FUNC0(dev, "cannot setup UWB radio: %d\n", result);
		goto error;
	}
	result = FUNC6(rc);
	if (result < 0) {
		FUNC0(dev, "cannot setup UWB MAC address: %d\n", result);
		goto error;
	}
	result = FUNC3(rc);
	if (result < 0) {
		FUNC0(dev, "cannot assign UWB DevAddr: %d\n", result);
		goto error;
	}
	result = FUNC5(rc);
	if (result < 0) {
		FUNC0(dev, "cannot setup IE subsystem: %d\n", result);
		goto error_ie_setup;
	}
	result = FUNC7(rc);
	if (result < 0) {
		FUNC0(dev, "cannot setup reservation subsystem: %d\n", result);
		goto error_rsv_setup;
	}
	FUNC1(rc);
	return 0;

error_rsv_setup:
	FUNC4(rc);
error_ie_setup:
error:
	return result;
}