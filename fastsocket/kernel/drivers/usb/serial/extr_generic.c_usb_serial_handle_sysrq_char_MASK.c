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
struct usb_serial_port {scalar_t__ sysrq; scalar_t__ console; } ;
struct tty_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,struct tty_struct*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC2(struct tty_struct *tty,
			struct usb_serial_port *port, unsigned int ch)
{
	if (port->sysrq && port->console) {
		if (ch && FUNC1(jiffies, port->sysrq)) {
			FUNC0(ch, tty);
			port->sysrq = 0;
			return 1;
		}
		port->sysrq = 0;
	}
	return 0;
}