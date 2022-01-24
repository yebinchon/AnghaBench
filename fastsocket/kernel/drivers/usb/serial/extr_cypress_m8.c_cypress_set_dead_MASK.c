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
struct usb_serial_port {int /*<<< orphan*/  number; int /*<<< orphan*/  dev; } ;
struct cypress_private {int /*<<< orphan*/  lock; scalar_t__ comm_is_ok; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct cypress_private* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC4(struct usb_serial_port *port)
{
	struct cypress_private *priv = FUNC3(port);
	unsigned long flags;

	FUNC1(&priv->lock, flags);
	if (!priv->comm_is_ok) {
		FUNC2(&priv->lock, flags);
		return;
	}
	priv->comm_is_ok = 0;
	FUNC2(&priv->lock, flags);

	FUNC0(&port->dev, "cypress_m8 suspending failing port %d - "
		"interval might be too short\n", port->number);
}