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
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct aircable_private {int /*<<< orphan*/  tx_buf; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct aircable_private* FUNC1 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC2(struct tty_struct *tty)
{
	struct usb_serial_port *port = tty->driver_data;
	struct aircable_private *priv = FUNC1(port);
	return FUNC0(priv->tx_buf);
}