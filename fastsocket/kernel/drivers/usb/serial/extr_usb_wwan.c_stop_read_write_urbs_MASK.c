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
struct usb_wwan_port_private {int /*<<< orphan*/ * out_urbs; int /*<<< orphan*/ * in_urbs; } ;
struct usb_serial_port {int dummy; } ;
struct usb_serial {int num_ports; struct usb_serial_port** port; } ;

/* Variables and functions */
 int N_IN_URB ; 
 int N_OUT_URB ; 
 struct usb_wwan_port_private* FUNC0 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct usb_serial *serial)
{
	int i, j;
	struct usb_serial_port *port;
	struct usb_wwan_port_private *portdata;

	/* Stop reading/writing urbs */
	for (i = 0; i < serial->num_ports; ++i) {
		port = serial->port[i];
		portdata = FUNC0(port);
		for (j = 0; j < N_IN_URB; j++)
			FUNC1(portdata->in_urbs[j]);
		for (j = 0; j < N_OUT_URB; j++)
			FUNC1(portdata->out_urbs[j]);
	}
}