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
struct usb_serial_port {int write_urb_busy; int bulk_out_size; TYPE_1__* write_urb; struct usb_serial* serial; int /*<<< orphan*/  lock; } ;
struct usb_serial {int /*<<< orphan*/  dev; } ;
struct tty_struct {int dummy; } ;
struct keyspan_pda_private {int tx_throttled; int tx_room; int /*<<< orphan*/  unthrottle_work; } ;
struct TYPE_2__ {int transfer_buffer_length; int /*<<< orphan*/  dev; int /*<<< orphan*/  transfer_buffer; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int,int) ; 
 struct keyspan_pda_private* FUNC7 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct tty_struct *tty,
	struct usb_serial_port *port, const unsigned char *buf, int count)
{
	struct usb_serial *serial = port->serial;
	int request_unthrottle = 0;
	int rc = 0;
	struct keyspan_pda_private *priv;

	priv = FUNC7(port);
	/* guess how much room is left in the device's ring buffer, and if we
	   want to send more than that, check first, updating our notion of
	   what is left. If our write will result in no room left, ask the
	   device to give us an interrupt when the room available rises above
	   a threshold, and hold off all writers (eventually, those using
	   select() or poll() too) until we receive that unthrottle interrupt.
	   Block if we can't write anything at all, otherwise write as much as
	   we can. */
	FUNC0("keyspan_pda_write(%d)", count);
	if (count == 0) {
		FUNC0(" write request of 0 bytes");
		return 0;
	}

	/* we might block because of:
	   the TX urb is in-flight (wait until it completes)
	   the device is full (wait until it says there is room)
	*/
	FUNC4(&port->lock);
	if (port->write_urb_busy || priv->tx_throttled) {
		FUNC5(&port->lock);
		return 0;
	}
	port->write_urb_busy = 1;
	FUNC5(&port->lock);

	/* At this point the URB is in our control, nobody else can submit it
	   again (the only sudden transition was the one from EINPROGRESS to
	   finished).  Also, the tx process is not throttled. So we are
	   ready to write. */

	count = (count > port->bulk_out_size) ? port->bulk_out_size : count;

	/* Check if we might overrun the Tx buffer.   If so, ask the
	   device how much room it really has.  This is done only on
	   scheduler time, since usb_control_msg() sleeps. */
	if (count > priv->tx_room && !FUNC1()) {
		unsigned char room;
		rc = FUNC6(serial->dev,
				     FUNC8(serial->dev, 0),
				     6, /* write_room */
				     USB_TYPE_VENDOR | USB_RECIP_INTERFACE
				     | USB_DIR_IN,
				     0, /* value: 0 means "remaining room" */
				     0, /* index */
				     &room,
				     1,
				     2000);
		if (rc < 0) {
			FUNC0(" roomquery failed");
			goto exit;
		}
		if (rc == 0) {
			FUNC0(" roomquery returned 0 bytes");
			rc = -EIO; /* device didn't return any data */
			goto exit;
		}
		FUNC0(" roomquery says %d", room);
		priv->tx_room = room;
	}
	if (count > priv->tx_room) {
		/* we're about to completely fill the Tx buffer, so
		   we'll be throttled afterwards. */
		count = priv->tx_room;
		request_unthrottle = 1;
	}

	if (count) {
		/* now transfer data */
		FUNC2(port->write_urb->transfer_buffer, buf, count);
		/* send the data out the bulk port */
		port->write_urb->transfer_buffer_length = count;

		priv->tx_room -= count;

		port->write_urb->dev = port->serial->dev;
		rc = FUNC9(port->write_urb, GFP_ATOMIC);
		if (rc) {
			FUNC0(" usb_submit_urb(write bulk) failed");
			goto exit;
		}
	} else {
		/* There wasn't any room left, so we are throttled until
		   the buffer empties a bit */
		request_unthrottle = 1;
	}

	if (request_unthrottle) {
		priv->tx_throttled = 1; /* block writers */
		FUNC3(&priv->unthrottle_work);
	}

	rc = count;
exit:
	if (rc < 0)
		port->write_urb_busy = 0;
	return rc;
}