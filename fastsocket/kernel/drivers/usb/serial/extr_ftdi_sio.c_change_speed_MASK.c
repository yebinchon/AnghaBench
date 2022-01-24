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
struct usb_serial_port {TYPE_1__* serial; } ;
struct tty_struct {int dummy; } ;
struct ftdi_private {int interface; } ;
typedef  int __u32 ;
typedef  int __u16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FTDI_SIO_SET_BAUDRATE_REQUEST ; 
 int /*<<< orphan*/  FTDI_SIO_SET_BAUDRATE_REQUEST_TYPE ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  WDR_SHORT_TIMEOUT ; 
 int FUNC0 (struct tty_struct*,struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ftdi_private* FUNC4 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct tty_struct *tty, struct usb_serial_port *port)
{
	struct ftdi_private *priv = FUNC4(port);
	char *buf;
	__u16 urb_value;
	__u16 urb_index;
	__u32 urb_index_value;
	int rv;

	buf = FUNC2(1, GFP_NOIO);
	if (!buf)
		return -ENOMEM;

	urb_index_value = FUNC0(tty, port);
	urb_value = (__u16)urb_index_value;
	urb_index = (__u16)(urb_index_value >> 16);
	if (priv->interface) {	/* FT2232C */
		urb_index = (__u16)((urb_index << 8) | priv->interface);
	}

	rv = FUNC3(port->serial->dev,
			    FUNC5(port->serial->dev, 0),
			    FTDI_SIO_SET_BAUDRATE_REQUEST,
			    FTDI_SIO_SET_BAUDRATE_REQUEST_TYPE,
			    urb_value, urb_index,
			    buf, 0, WDR_SHORT_TIMEOUT);

	FUNC1(buf);
	return rv;
}