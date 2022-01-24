#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_serial_port {int /*<<< orphan*/  work; int /*<<< orphan*/  dev; TYPE_2__* write_urb; TYPE_1__* serial; int /*<<< orphan*/  bulk_out_size; } ;
struct spcp8x5_private {int write_urb_in_use; int /*<<< orphan*/  lock; int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {int transfer_buffer_length; int /*<<< orphan*/  dev; int /*<<< orphan*/  transfer_buffer; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct spcp8x5_private* FUNC6 (struct usb_serial_port*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct usb_serial_port *port)
{
	int count, result;
	struct spcp8x5_private *priv = FUNC6(port);
	unsigned long flags;

	FUNC4(&priv->lock, flags);

	if (priv->write_urb_in_use) {
		FUNC0(&port->dev, "write urb still used\n");
		FUNC5(&priv->lock, flags);
		return;
	}

	/* send the 1st urb for writting */
	FUNC2(port->write_urb->transfer_buffer , 0x00 , port->bulk_out_size);
	count = FUNC1(priv->buf, port->write_urb->transfer_buffer,
		port->bulk_out_size);

	if (count == 0) {
		FUNC5(&priv->lock, flags);
		return;
	}

	/* update the urb status */
	priv->write_urb_in_use = 1;

	FUNC5(&priv->lock, flags);

	port->write_urb->transfer_buffer_length = count;
	port->write_urb->dev = port->serial->dev;

	result = FUNC7(port->write_urb, GFP_ATOMIC);
	if (result) {
		FUNC0(&port->dev, "failed submitting write urb, error %d\n",
			result);
		priv->write_urb_in_use = 0;
		/* TODO: reschedule spcp8x5_send */
	}


	FUNC3(&port->work);
}