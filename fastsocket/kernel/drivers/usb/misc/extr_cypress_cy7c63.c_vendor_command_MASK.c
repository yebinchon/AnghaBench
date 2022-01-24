#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cypress {unsigned char* port; TYPE_1__* udev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CYPRESS_MAX_REQSIZE ; 
#define  CYPRESS_READ_PORT 128 
 unsigned char CYPRESS_READ_PORT_ID0 ; 
 unsigned char CYPRESS_READ_PORT_ID1 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_OTHER ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,unsigned int,unsigned char,int,unsigned char,unsigned char,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct cypress *dev, unsigned char request,
			  unsigned char address, unsigned char data)
{
	int retval = 0;
	unsigned int pipe;
	unsigned char *iobuf;

	/* allocate some memory for the i/o buffer*/
	iobuf = FUNC3(CYPRESS_MAX_REQSIZE, GFP_KERNEL);
	if (!iobuf) {
		FUNC1(&dev->udev->dev, "Out of memory!\n");
		retval = -ENOMEM;
		goto error;
	}

	FUNC0(&dev->udev->dev, "Sending usb_control_msg (data: %d)\n", data);

	/* prepare usb control message and send it upstream */
	pipe = FUNC5(dev->udev, 0);
	retval = FUNC4(dev->udev, pipe, request,
				 USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_OTHER,
				 address, data, iobuf, CYPRESS_MAX_REQSIZE,
				 USB_CTRL_GET_TIMEOUT);

	/* store returned data (more READs to be added) */
	switch (request) {
		case CYPRESS_READ_PORT:
			if (address == CYPRESS_READ_PORT_ID0) {
				dev->port[0] = iobuf[1];
				FUNC0(&dev->udev->dev,
					"READ_PORT0 returned: %d\n",
					dev->port[0]);
			}
			else if (address == CYPRESS_READ_PORT_ID1) {
				dev->port[1] = iobuf[1];
				FUNC0(&dev->udev->dev,
					"READ_PORT1 returned: %d\n",
					dev->port[1]);
			}
			break;
	}

	FUNC2(iobuf);
error:
	return retval;
}