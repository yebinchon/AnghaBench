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
struct usbatm_data {int /*<<< orphan*/  flags; struct cxacru_data* driver_data; } ;
struct usb_interface {int dummy; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct usb_device {int dummy; } ;
struct cxacru_modem_type {int dummy; } ;
struct cxacru_data {int line_status; int adsl_status; void* rcv_urb; void* snd_urb; int /*<<< orphan*/ * rcv_buf; int /*<<< orphan*/ * snd_buf; int /*<<< orphan*/  poll_work; int /*<<< orphan*/  cm_serialize; int /*<<< orphan*/  snd_done; int /*<<< orphan*/  rcv_done; int /*<<< orphan*/  adsl_state_serialize; int /*<<< orphan*/  poll_state; int /*<<< orphan*/  poll_state_serialize; struct cxacru_modem_type* modem_type; struct usbatm_data* usbatm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXACRU_EP_CMD ; 
 int /*<<< orphan*/  CXPOLL_STOPPED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  UDSL_SKIP_HEAVY_INIT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cxacru_blocking_completion ; 
 scalar_t__ FUNC2 (struct cxacru_data*) ; 
 int /*<<< orphan*/  cxacru_poll_status ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 struct usb_device* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct cxacru_data*) ; 
 struct cxacru_data* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct usbatm_data *usbatm_instance,
		       struct usb_interface *intf, const struct usb_device_id *id)
{
	struct cxacru_data *instance;
	struct usb_device *usb_dev = FUNC5(intf);
	int ret;

	/* instance init */
	instance = FUNC7(sizeof(*instance), GFP_KERNEL);
	if (!instance) {
		FUNC3("cxacru_bind: no memory for instance data");
		return -ENOMEM;
	}

	instance->usbatm = usbatm_instance;
	instance->modem_type = (struct cxacru_modem_type *) id->driver_info;

	FUNC8(&instance->poll_state_serialize);
	instance->poll_state = CXPOLL_STOPPED;
	instance->line_status = -1;
	instance->adsl_status = -1;

	FUNC8(&instance->adsl_state_serialize);

	instance->rcv_buf = (u8 *) FUNC1(GFP_KERNEL);
	if (!instance->rcv_buf) {
		FUNC3("cxacru_bind: no memory for rcv_buf");
		ret = -ENOMEM;
		goto fail;
	}
	instance->snd_buf = (u8 *) FUNC1(GFP_KERNEL);
	if (!instance->snd_buf) {
		FUNC3("cxacru_bind: no memory for snd_buf");
		ret = -ENOMEM;
		goto fail;
	}
	instance->rcv_urb = FUNC9(0, GFP_KERNEL);
	if (!instance->rcv_urb) {
		FUNC3("cxacru_bind: no memory for rcv_urb");
		ret = -ENOMEM;
		goto fail;
	}
	instance->snd_urb = FUNC9(0, GFP_KERNEL);
	if (!instance->snd_urb) {
		FUNC3("cxacru_bind: no memory for snd_urb");
		ret = -ENOMEM;
		goto fail;
	}

	FUNC10(instance->rcv_urb,
			usb_dev, FUNC12(usb_dev, CXACRU_EP_CMD),
			instance->rcv_buf, PAGE_SIZE,
			cxacru_blocking_completion, &instance->rcv_done, 1);

	FUNC10(instance->snd_urb,
			usb_dev, FUNC13(usb_dev, CXACRU_EP_CMD),
			instance->snd_buf, PAGE_SIZE,
			cxacru_blocking_completion, &instance->snd_done, 4);

	FUNC8(&instance->cm_serialize);

	FUNC0(&instance->poll_work, cxacru_poll_status);

	usbatm_instance->driver_data = instance;

	usbatm_instance->flags = (FUNC2(instance) ? 0 : UDSL_SKIP_HEAVY_INIT);

	return 0;

 fail:
	FUNC4((unsigned long) instance->snd_buf);
	FUNC4((unsigned long) instance->rcv_buf);
	FUNC11(instance->snd_urb);
	FUNC11(instance->rcv_urb);
	FUNC6(instance);

	return ret;
}