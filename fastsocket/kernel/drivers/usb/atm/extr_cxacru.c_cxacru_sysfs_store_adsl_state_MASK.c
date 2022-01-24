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
struct usbatm_data {struct cxacru_data* driver_data; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct cxacru_data {int poll_state; TYPE_1__ poll_work; int /*<<< orphan*/  adsl_state_serialize; int /*<<< orphan*/  poll_state_serialize; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  CM_REQUEST_CHIP_ADSL_LINE_START ; 
 int /*<<< orphan*/  CM_REQUEST_CHIP_ADSL_LINE_STOP ; 
#define  CXPOLL_POLLING 131 
#define  CXPOLL_SHUTDOWN 130 
#define  CXPOLL_STOPPED 129 
#define  CXPOLL_STOPPING 128 
 int EACCES ; 
 int EINVAL ; 
 int EIO ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (struct usbatm_data*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cxacru_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char const*) ; 
 struct usb_interface* FUNC11 (struct device*) ; 
 struct usbatm_data* FUNC12 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC13(struct device *dev,
	struct device_attribute *attr, const char *buf, size_t count)
{
	struct usb_interface *intf = FUNC11(dev);
	struct usbatm_data *usbatm_instance = FUNC12(intf);
	struct cxacru_data *instance = usbatm_instance->driver_data;
	int ret;
	int poll = -1;
	char str_cmd[8];
	int len = FUNC10(buf);

	if (!FUNC1(CAP_NET_ADMIN))
		return -EACCES;

	ret = FUNC8(buf, "%7s", str_cmd);
	if (ret != 1)
		return -EINVAL;
	ret = 0;

	if (FUNC6(&instance->adsl_state_serialize))
		return -ERESTARTSYS;

	if (!FUNC9(str_cmd, "stop") || !FUNC9(str_cmd, "restart")) {
		ret = FUNC2(instance, CM_REQUEST_CHIP_ADSL_LINE_STOP, NULL, 0, NULL, 0);
		if (ret < 0) {
			FUNC0(usbatm_instance, "change adsl state:"
				" CHIP_ADSL_LINE_STOP returned %d\n", ret);

			ret = -EIO;
		} else {
			ret = len;
			poll = CXPOLL_STOPPED;
		}
	}

	/* Line status is only updated every second
	 * and the device appears to only react to
	 * START/STOP every second too. Wait 1.5s to
	 * be sure that restart will have an effect. */
	if (!FUNC9(str_cmd, "restart"))
		FUNC4(1500);

	if (!FUNC9(str_cmd, "start") || !FUNC9(str_cmd, "restart")) {
		ret = FUNC2(instance, CM_REQUEST_CHIP_ADSL_LINE_START, NULL, 0, NULL, 0);
		if (ret < 0) {
			FUNC0(usbatm_instance, "change adsl state:"
				" CHIP_ADSL_LINE_START returned %d\n", ret);

			ret = -EIO;
		} else {
			ret = len;
			poll = CXPOLL_POLLING;
		}
	}

	if (!FUNC9(str_cmd, "poll")) {
		ret = len;
		poll = CXPOLL_POLLING;
	}

	if (ret == 0) {
		ret = -EINVAL;
		poll = -1;
	}

	if (poll == CXPOLL_POLLING) {
		FUNC5(&instance->poll_state_serialize);
		switch (instance->poll_state) {
		case CXPOLL_STOPPED:
			/* start polling */
			instance->poll_state = CXPOLL_POLLING;
			break;

		case CXPOLL_STOPPING:
			/* abort stop request */
			instance->poll_state = CXPOLL_POLLING;
		case CXPOLL_POLLING:
		case CXPOLL_SHUTDOWN:
			/* don't start polling */
			poll = -1;
		}
		FUNC7(&instance->poll_state_serialize);
	} else if (poll == CXPOLL_STOPPED) {
		FUNC5(&instance->poll_state_serialize);
		/* request stop */
		if (instance->poll_state == CXPOLL_POLLING)
			instance->poll_state = CXPOLL_STOPPING;
		FUNC7(&instance->poll_state_serialize);
	}

	FUNC7(&instance->adsl_state_serialize);

	if (poll == CXPOLL_POLLING)
		FUNC3(&instance->poll_work.work);

	return ret;
}