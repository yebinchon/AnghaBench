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
struct usb_serial_port {int dummy; } ;
struct tty_struct {TYPE_1__* termios; struct usb_serial_port* driver_data; } ;
struct TYPE_2__ {unsigned int c_cflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_serial_port*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct tty_struct *tty,
	struct usb_serial_port *port)
{
	unsigned int baud;

	if (tty) {
		FUNC0(tty->driver_data,
			&tty->termios->c_cflag, &baud);
		FUNC1(tty, baud, baud);
	}

	else {
		unsigned int cflag;
		cflag = 0;
		FUNC0(port, &cflag, &baud);
	}
}