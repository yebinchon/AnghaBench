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
struct usb_serial {int num_ports; struct usb_serial_port** port; } ;
struct oti6858_private {int /*<<< orphan*/ * buf; int /*<<< orphan*/  delayed_write_work; int /*<<< orphan*/  delayed_setup_work; struct usb_serial_port* port; int /*<<< orphan*/  intr_wait; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PL2303_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct oti6858_private*) ; 
 struct oti6858_private* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  send_data ; 
 int /*<<< orphan*/  setup_line ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct oti6858_private* FUNC7 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_serial_port*,struct oti6858_private*) ; 

__attribute__((used)) static int FUNC9(struct usb_serial *serial)
{
	struct usb_serial_port *port = serial->port[0];
	struct oti6858_private *priv;
	int i;

	for (i = 0; i < serial->num_ports; ++i) {
		priv = FUNC3(sizeof(struct oti6858_private), GFP_KERNEL);
		if (!priv)
			break;
		priv->buf = FUNC4(PL2303_BUF_SIZE);
		if (priv->buf == NULL) {
			FUNC2(priv);
			break;
		}

		FUNC6(&priv->lock);
		FUNC1(&priv->intr_wait);
/*		INIT_WORK(&priv->setup_work, setup_line, serial->port[i]); */
/*		INIT_WORK(&priv->write_work, send_data, serial->port[i]); */
		priv->port = port;
		FUNC0(&priv->delayed_setup_work, setup_line);
		FUNC0(&priv->delayed_write_work, send_data);

		FUNC8(serial->port[i], priv);
	}
	if (i == serial->num_ports)
		return 0;

	for (--i; i >= 0; --i) {
		priv = FUNC7(serial->port[i]);
		FUNC5(priv->buf);
		FUNC2(priv);
		FUNC8(serial->port[i], NULL);
	}
	return -ENOMEM;
}