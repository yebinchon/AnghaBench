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
struct usb_serial_port {int dummy; } ;
struct quatech2_port {int rcv_flush; } ;

/* Variables and functions */
 struct quatech2_port* FUNC0 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC1(struct usb_serial_port *port)
{
	/* obtain the private structure for the port */
	struct quatech2_port *port_extra = FUNC0(port);
	port_extra->rcv_flush = true;
}