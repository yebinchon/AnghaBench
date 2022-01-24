#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usbduxsub {int /*<<< orphan*/ * insnBuffer; TYPE_2__* comedidev; TYPE_1__* interface; int /*<<< orphan*/  usbdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  minor; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_IN_EP ; 
 int EFAULT ; 
 int RETRIES ; 
 int /*<<< orphan*/  SIZEINSNBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usbduxsub *this_usbduxsub, int command)
{
	int result = (-EFAULT);
	int nrec;
	int i;

	for (i = 0; i < RETRIES; i++) {
		result = FUNC2(this_usbduxsub->usbdev,
				      FUNC3(this_usbduxsub->usbdev,
						      COMMAND_IN_EP),
				      this_usbduxsub->insnBuffer, SIZEINSNBUF,
				      &nrec, 1);
		if (result < 0) {
			FUNC0(&this_usbduxsub->interface->dev, "comedi%d: "
				"insn: USB error %d while receiving DUX command"
				"\n", this_usbduxsub->comedidev->minor, result);
			return result;
		}
		if (FUNC1(this_usbduxsub->insnBuffer[0]) == command)
			return result;
	}
	/* this is only reached if the data has been requested a couple of
	 * times */
	FUNC0(&this_usbduxsub->interface->dev, "comedi%d: insn: "
		"wrong data returned from firmware: want cmd %d, got cmd %d.\n",
		this_usbduxsub->comedidev->minor, command,
		FUNC1(this_usbduxsub->insnBuffer[0]));
	return -EFAULT;
}