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
struct usb_line6 {int /*<<< orphan*/  ifcdev; int /*<<< orphan*/  ep_control_write; int /*<<< orphan*/  usbdev; scalar_t__ max_packet_size; } ;

/* Variables and functions */
 int HZ ; 
 int LINE6_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_line6*,char,char const*,int) ; 
 int FUNC2 (scalar_t__,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct usb_line6 *line6, const char *buffer,
			   int size)
{
	int i, done = 0;

#if DO_DUMP_URB_SEND
	line6_write_hexdump(line6, 'S', buffer, size);
#endif

	for (i = 0; i < size; i += line6->max_packet_size) {
		int partial;
		const char *frag_buf = buffer + i;
		int frag_size = FUNC2(line6->max_packet_size, size - i);
		int retval;

		retval = FUNC3(line6->usbdev,
					   FUNC4(line6->usbdev,
							  line6->ep_control_write),
					   (char *)frag_buf, frag_size,
					   &partial, LINE6_TIMEOUT * HZ);

		if (retval) {
			FUNC0(line6->ifcdev,
				"usb_interrupt_msg failed (%d)\n", retval);
			break;
		}

		done += frag_size;
	}

	return done;
}