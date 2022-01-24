#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct usb_interface {int num_altsetting; struct device dev; TYPE_2__* cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct i1480 {int buf_size; char* pre_fw_name; char* mac_fw_name; char* mac_fw_name_deprecate; char* phy_fw_name; struct i1480_usb* cmd_buf; int /*<<< orphan*/  cmd; int /*<<< orphan*/  wait_init_done; int /*<<< orphan*/ * rc_setup; int /*<<< orphan*/  read; int /*<<< orphan*/  write; struct device* dev; struct i1480_usb* evt_buf; } ;
struct i1480_usb {int /*<<< orphan*/  usb_dev; struct i1480 i1480; } ;
struct TYPE_8__ {int idProduct; } ;
struct TYPE_9__ {TYPE_3__ descriptor; } ;
struct TYPE_6__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_7__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int FUNC3 (struct i1480*) ; 
 int /*<<< orphan*/  i1480_usb_cmd ; 
 int FUNC4 (struct i1480_usb*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct i1480_usb*) ; 
 int /*<<< orphan*/  FUNC6 (struct i1480_usb*) ; 
 int /*<<< orphan*/  i1480_usb_read ; 
 int /*<<< orphan*/  i1480_usb_wait_init_done ; 
 int /*<<< orphan*/  i1480_usb_write ; 
 TYPE_4__* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (struct i1480_usb*) ; 
 struct i1480_usb* FUNC9 (int,int /*<<< orphan*/ ) ; 
 struct i1480_usb* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
int FUNC13(struct usb_interface *iface, const struct usb_device_id *id)
{
	struct i1480_usb *i1480_usb;
	struct i1480 *i1480;
	struct device *dev = &iface->dev;
	int result;

	result = -ENODEV;
	if (iface->cur_altsetting->desc.bInterfaceNumber != 0) {
		FUNC0(dev, "not attaching to iface %d\n",
			iface->cur_altsetting->desc.bInterfaceNumber);
		goto error;
	}
	if (iface->num_altsetting > 1
	    && FUNC7(iface)->descriptor.idProduct == 0xbabe) {
		/* Need altsetting #1 [HW QUIRK] or EP1 won't work */
		result = FUNC12(FUNC7(iface), 0, 1);
		if (result < 0)
			FUNC2(dev,
				 "can't set altsetting 1 on iface 0: %d\n",
				 result);
	}

	result = -ENOMEM;
	i1480_usb = FUNC10(sizeof(*i1480_usb), GFP_KERNEL);
	if (i1480_usb == NULL) {
		FUNC1(dev, "Unable to allocate instance\n");
		goto error;
	}
	FUNC6(i1480_usb);

	i1480 = &i1480_usb->i1480;
	i1480->buf_size = 512;
	i1480->cmd_buf = FUNC9(2 * i1480->buf_size, GFP_KERNEL);
	if (i1480->cmd_buf == NULL) {
		FUNC1(dev, "Cannot allocate transfer buffers\n");
		result = -ENOMEM;
		goto error_buf_alloc;
	}
	i1480->evt_buf = i1480->cmd_buf + i1480->buf_size;

	result = FUNC4(i1480_usb, iface);
	if (result < 0) {
		FUNC1(dev, "Cannot create instance: %d\n", result);
		goto error_create;
	}

	/* setup the fops and upload the firmware */
	i1480->pre_fw_name = "i1480-pre-phy-0.0.bin";
	i1480->mac_fw_name = "i1480-usb-0.0.bin";
	i1480->mac_fw_name_deprecate = "ptc-0.0.bin";
	i1480->phy_fw_name = "i1480-phy-0.0.bin";
	i1480->dev = &iface->dev;
	i1480->write = i1480_usb_write;
	i1480->read = i1480_usb_read;
	i1480->rc_setup = NULL;
	i1480->wait_init_done = i1480_usb_wait_init_done;
	i1480->cmd = i1480_usb_cmd;

	result = FUNC3(&i1480_usb->i1480);	/* the real thing */
	if (result >= 0) {
		FUNC11(i1480_usb->usb_dev);
		result = -ENODEV;	/* we don't want to bind to the iface */
	}
	FUNC5(i1480_usb);
error_create:
	FUNC8(i1480->cmd_buf);
error_buf_alloc:
	FUNC8(i1480_usb);
error:
	return result;
}