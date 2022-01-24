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
struct usbatm_data {struct usb_interface* usb_intf; struct cxacru_data* driver_data; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct cxacru_data {int poll_state; TYPE_1__ poll_work; int /*<<< orphan*/  adsl_state_serialize; int /*<<< orphan*/  poll_state_serialize; } ;
struct atm_dev {int /*<<< orphan*/ * esi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_REQUEST_CARD_GET_MAC_ADDRESS ; 
 int /*<<< orphan*/  CM_REQUEST_CHIP_ADSL_LINE_START ; 
 int /*<<< orphan*/  CREATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CXPOLL_POLLING 131 
#define  CXPOLL_SHUTDOWN 130 
#define  CXPOLL_STOPPED 129 
#define  CXPOLL_STOPPING 128 
 int /*<<< orphan*/  FUNC1 (struct usbatm_data*,char*,int) ; 
 int FUNC2 (struct cxacru_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usbatm_data*,struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct usbatm_data*,char*,int) ; 

__attribute__((used)) static int FUNC9(struct usbatm_data *usbatm_instance,
		struct atm_dev *atm_dev)
{
	struct cxacru_data *instance = usbatm_instance->driver_data;
	struct usb_interface *intf = usbatm_instance->usb_intf;
	/*
	struct atm_dev *atm_dev = usbatm_instance->atm_dev;
	*/
	int ret;
	int start_polling = 1;

	FUNC5("cxacru_atm_start");

	/* Read MAC address */
	ret = FUNC2(instance, CM_REQUEST_CARD_GET_MAC_ADDRESS, NULL, 0,
			atm_dev->esi, sizeof(atm_dev->esi));
	if (ret < 0) {
		FUNC1(usbatm_instance, "cxacru_atm_start: CARD_GET_MAC_ADDRESS returned %d\n", ret);
		return ret;
	}

	#define CXACRU_DEVICE_CREATE_FILE(_name) \
		ret = device_create_file(&intf->dev, &dev_attr_##_name); \
		if (unlikely(ret)) \
			goto fail_sysfs;
	FUNC0(CREATE);
	#undef CXACRU_DEVICE_CREATE_FILE

	/* start ADSL */
	FUNC6(&instance->adsl_state_serialize);
	ret = FUNC2(instance, CM_REQUEST_CHIP_ADSL_LINE_START, NULL, 0, NULL, 0);
	if (ret < 0)
		FUNC1(usbatm_instance, "cxacru_atm_start: CHIP_ADSL_LINE_START returned %d\n", ret);

	/* Start status polling */
	FUNC6(&instance->poll_state_serialize);
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
		start_polling = 0;
	}
	FUNC7(&instance->poll_state_serialize);
	FUNC7(&instance->adsl_state_serialize);

	if (start_polling)
		FUNC3(&instance->poll_work.work);
	return 0;

fail_sysfs:
	FUNC8(usbatm_instance, "cxacru_atm_start: device_create_file failed (%d)\n", ret);
	FUNC4(usbatm_instance, atm_dev);
	return ret;
}