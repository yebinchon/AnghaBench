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
typedef  int /*<<< orphan*/  uint8_t ;
struct usbduxsub {TYPE_1__* interface; int /*<<< orphan*/  usbdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EZTIMEOUT ; 
 int /*<<< orphan*/  USBDUXSUB_FIRMWARE ; 
 int /*<<< orphan*/  VENDOR_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usbduxsub *usbduxsub,
			    uint8_t * local_transfer_buffer,
			    unsigned int startAddr, unsigned int len)
{
	int errcode;

	errcode = FUNC2(usbduxsub->usbdev,
				  FUNC3(usbduxsub->usbdev, 0),
				  /* brequest, firmware */
				  USBDUXSUB_FIRMWARE,
				  /* bmRequestType */
				  VENDOR_DIR_OUT,
				  /* value */
				  startAddr,
				  /* index */
				  0x0000,
				  /* our local safe buffer */
				  local_transfer_buffer,
				  /* length */
				  len,
				  /* timeout */
				  EZTIMEOUT);
	FUNC0(&usbduxsub->interface->dev, "comedi_: result=%d\n", errcode);
	if (errcode < 0) {
		FUNC1(&usbduxsub->interface->dev, "comedi_: upload failed\n");
		return errcode;
	}
	return 0;
}