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
struct spcp8x5_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct spcp8x5_private* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty)
{
	struct usb_serial_port *port = tty->driver_data;
	struct spcp8x5_private *priv = FUNC3(port);
	int chars = 0;
	unsigned long flags;

	FUNC1(&priv->lock, flags);
	chars = FUNC0(priv->buf);
	FUNC2(&priv->lock, flags);

	return chars;
}