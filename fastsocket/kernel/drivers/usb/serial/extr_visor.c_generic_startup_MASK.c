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
struct visor_private {int /*<<< orphan*/  lock; } ;
struct usb_serial_port {int dummy; } ;
struct usb_serial {int num_ports; struct usb_serial_port** port; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct visor_private*) ; 
 struct visor_private* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct visor_private* FUNC3 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_serial_port*,struct visor_private*) ; 

__attribute__((used)) static int FUNC5(struct usb_serial *serial)
{
	struct usb_serial_port **ports = serial->port;
	struct visor_private *priv;
	int i;

	for (i = 0; i < serial->num_ports; ++i) {
		priv = FUNC1(sizeof(*priv), GFP_KERNEL);
		if (!priv) {
			while (i-- != 0) {
				priv = FUNC3(ports[i]);
				FUNC4(ports[i], NULL);
				FUNC0(priv);
			}
			return -ENOMEM;
		}
		FUNC2(&priv->lock);
		FUNC4(ports[i], priv);
	}
	return 0;
}