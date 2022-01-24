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
struct usb_serial_port {TYPE_2__* serial; int /*<<< orphan*/  port; } ;
struct urb {scalar_t__ actual_length; } ;
struct tty_struct {int dummy; } ;
struct TYPE_4__ {TYPE_1__** port; } ;
struct TYPE_3__ {struct urb* read_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,unsigned char*,int) ; 
 struct tty_struct* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct usb_serial_port *port,
	unsigned char data)
{
	/* get the tty_struct for this port */
	struct tty_struct *tty = FUNC2(&(port->port));
	/* get the URB with the data in to push */
	struct urb *urb = port->serial->port[0]->read_urb;

	if (tty && urb->actual_length) {
		FUNC0(tty, 1);
		FUNC1(tty, &data, 1);
		/* should this be commented out here? */
		/*tty_flip_buffer_push(tty);*/
	}
}