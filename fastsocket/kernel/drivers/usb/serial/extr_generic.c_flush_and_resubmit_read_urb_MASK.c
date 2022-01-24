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
struct usb_serial_port {int /*<<< orphan*/  sysrq; int /*<<< orphan*/  console; int /*<<< orphan*/  port; struct urb* read_urb; } ;
struct urb {int actual_length; scalar_t__ transfer_buffer; } ;
struct tty_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  TTY_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 struct tty_struct* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_serial_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*,struct usb_serial_port*,char) ; 

__attribute__((used)) static void FUNC7(struct usb_serial_port *port)
{
	struct urb *urb = port->read_urb;
	struct tty_struct *tty = FUNC4(&port->port);
	char *ch = (char *)urb->transfer_buffer;
	int i;

	if (!tty)
		goto done;

	/* The per character mucking around with sysrq path it too slow for
	   stuff like 3G modems, so shortcircuit it in the 99.9999999% of cases
	   where the USB serial is not a console anyway */
	if (!port->console || !port->sysrq)
		FUNC2(tty, ch, urb->actual_length);
	else {
		/* Push data to tty */
		for (i = 0; i < urb->actual_length; i++, ch++) {
			if (!FUNC6(tty, port, *ch))
				FUNC1(tty, *ch, TTY_NORMAL);
		}
	}
	FUNC0(tty);
	FUNC3(tty);
done:
	FUNC5(port, GFP_ATOMIC);
}