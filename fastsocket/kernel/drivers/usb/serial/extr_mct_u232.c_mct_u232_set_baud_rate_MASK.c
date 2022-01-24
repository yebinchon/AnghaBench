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
struct usb_serial {int /*<<< orphan*/  dev; } ;
struct tty_struct {int dummy; } ;
typedef  int /*<<< orphan*/  speed_t ;
typedef  unsigned char __le32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  MCT_U232_SET_BAUD_RATE_REQUEST ; 
 int /*<<< orphan*/  MCT_U232_SET_BAUD_RATE_SIZE ; 
 int /*<<< orphan*/  MCT_U232_SET_CTS_REQUEST ; 
 int /*<<< orphan*/  MCT_U232_SET_CTS_SIZE ; 
 int /*<<< orphan*/  MCT_U232_SET_REQUEST_TYPE ; 
 int /*<<< orphan*/  MCT_U232_SET_UNKNOWN1_REQUEST ; 
 int /*<<< orphan*/  MCT_U232_SET_UNKNOWN1_SIZE ; 
 int /*<<< orphan*/  WDR_TIMEOUT ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_serial*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct tty_struct *tty,
	struct usb_serial *serial, struct usb_serial_port *port, speed_t value)
{
	__le32 divisor;
	int rc;
	unsigned char zero_byte = 0;
	unsigned char cts_enable_byte = 0;
	speed_t speed;

	divisor = FUNC1(FUNC4(serial, value,
								&speed));

	rc = FUNC6(serial->dev, FUNC7(serial->dev, 0),
				MCT_U232_SET_BAUD_RATE_REQUEST,
				MCT_U232_SET_REQUEST_TYPE,
				0, 0, &divisor, MCT_U232_SET_BAUD_RATE_SIZE,
				WDR_TIMEOUT);
	if (rc < 0)	/*FIXME: What value speed results */
		FUNC3(&port->dev, "Set BAUD RATE %d failed (error = %d)\n",
			value, rc);
	else
		FUNC5(tty, speed, speed);
	FUNC2("set_baud_rate: value: 0x%x, divisor: 0x%x", value, divisor);

	/* Mimic the MCT-supplied Windows driver (version 1.21P.0104), which
	   always sends two extra USB 'device request' messages after the
	   'baud rate change' message.  The actual functionality of the
	   request codes in these messages is not fully understood but these
	   particular codes are never seen in any operation besides a baud
	   rate change.  Both of these messages send a single byte of data.
	   In the first message, the value of this byte is always zero.

	   The second message has been determined experimentally to control
	   whether data will be transmitted to a device which is not asserting
	   the 'CTS' signal.  If the second message's data byte is zero, data
	   will be transmitted even if 'CTS' is not asserted (i.e. no hardware
	   flow control).  if the second message's data byte is nonzero (a
	   value of 1 is used by this driver), data will not be transmitted to
	   a device which is not asserting 'CTS'.
	*/

	rc = FUNC6(serial->dev, FUNC7(serial->dev, 0),
				MCT_U232_SET_UNKNOWN1_REQUEST,
				MCT_U232_SET_REQUEST_TYPE,
				0, 0, &zero_byte, MCT_U232_SET_UNKNOWN1_SIZE,
				WDR_TIMEOUT);
	if (rc < 0)
		FUNC3(&port->dev, "Sending USB device request code %d "
			"failed (error = %d)\n", MCT_U232_SET_UNKNOWN1_REQUEST,
			rc);

	if (port && FUNC0(tty))
	   cts_enable_byte = 1;

	FUNC2("set_baud_rate: send second control message, data = %02X",
							cts_enable_byte);
	rc = FUNC6(serial->dev, FUNC7(serial->dev, 0),
			MCT_U232_SET_CTS_REQUEST,
			MCT_U232_SET_REQUEST_TYPE,
			0, 0, &cts_enable_byte, MCT_U232_SET_CTS_SIZE,
			WDR_TIMEOUT);
	if (rc < 0)
		FUNC3(&port->dev, "Sending USB device request code %d "
			"failed (error = %d)\n", MCT_U232_SET_CTS_REQUEST, rc);

	return rc;
}