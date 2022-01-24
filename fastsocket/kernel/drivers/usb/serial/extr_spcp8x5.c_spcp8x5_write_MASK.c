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
struct usb_serial_port {int /*<<< orphan*/  dev; } ;
struct tty_struct {int dummy; } ;
struct spcp8x5_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct spcp8x5_private* FUNC5 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC6(struct tty_struct *tty, struct usb_serial_port *port,
			 const unsigned char *buf, int count)
{
	struct spcp8x5_private *priv = FUNC5(port);
	unsigned long flags;

	FUNC0(&port->dev, "%d bytes\n", count);

	if (!count)
		return count;

	FUNC3(&priv->lock, flags);
	count = FUNC1(priv->buf, buf, count);
	FUNC4(&priv->lock, flags);

	FUNC2(port);

	return count;
}