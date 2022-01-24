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
struct sep_device {unsigned long send_ct; unsigned long reply_ct; scalar_t__ shared_addr; } ;
struct file {struct sep_device* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 int /*<<< orphan*/  HW_HOST_SEP_HOST_GPR2_REG_ADDR ; 
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 unsigned int POLLRDNORM ; 
 unsigned int POLLWRNORM ; 
 scalar_t__ SEP_DRIVER_MESSAGE_SHARED_AREA_SIZE_IN_BYTES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sep_event ; 
 unsigned long FUNC3 (struct sep_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC4(struct file *filp, poll_table * wait)
{
	unsigned long count;
	unsigned int mask = 0;
	unsigned long retval = 0;	/* flow id */
	struct sep_device *sep = filp->private_data;

	FUNC0("---------->SEP Driver poll: start\n");


#if SEP_DRIVER_POLLING_MODE

	while (sep->send_ct != (retval & 0x7FFFFFFF)) {
		retval = sep_read_reg(sep, HW_HOST_SEP_HOST_GPR2_REG_ADDR);

		for (count = 0; count < 10 * 4; count += 4)
			edbg("Poll Debug Word %lu of the message is %lu\n", count, *((unsigned long *) (sep->shared_addr + SEP_DRIVER_MESSAGE_SHARED_AREA_SIZE_IN_BYTES + count)));
	}

	sep->reply_ct++;
#else
	/* add the event to the polling wait table */
	FUNC2(filp, &sep_event, wait);

#endif

	FUNC1("sep->send_ct is %lu\n", sep->send_ct);
	FUNC1("sep->reply_ct is %lu\n", sep->reply_ct);

	/* check if the data is ready */
	if (sep->send_ct == sep->reply_ct) {
		for (count = 0; count < 12 * 4; count += 4)
			FUNC1("Sep Mesg Word %lu of the message is %lu\n", count, *((unsigned long *) (sep->shared_addr + count)));

		for (count = 0; count < 10 * 4; count += 4)
			FUNC1("Debug Data Word %lu of the message is %lu\n", count, *((unsigned long *) (sep->shared_addr + 0x1800 + count)));

		retval = FUNC3(sep, HW_HOST_SEP_HOST_GPR2_REG_ADDR);
		FUNC1("retval is %lu\n", retval);
		/* check if the this is sep reply or request */
		if (retval >> 31) {
			FUNC1("SEP Driver: sep request in\n");
			/* request */
			mask |= POLLOUT | POLLWRNORM;
		} else {
			FUNC1("SEP Driver: sep reply in\n");
			mask |= POLLIN | POLLRDNORM;
		}
	}
	FUNC0("SEP Driver:<-------- poll exit\n");
	return mask;
}