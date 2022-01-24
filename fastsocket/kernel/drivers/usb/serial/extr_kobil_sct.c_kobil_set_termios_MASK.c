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
struct tty_struct {struct ktermios* termios; } ;
struct ktermios {int c_cflag; } ;
struct kobil_private {scalar_t__ device_type; } ;
typedef  int speed_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CMSPAR ; 
 int CSTOPB ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ KOBIL_KAAN_SIM_PRODUCT_ID ; 
 int /*<<< orphan*/  KOBIL_TIMEOUT ; 
 scalar_t__ KOBIL_USBTWIN_PRODUCT_ID ; 
 int PARENB ; 
 int PARODD ; 
 unsigned short SUSBCR_SBR_1200 ; 
 unsigned short SUSBCR_SBR_9600 ; 
 unsigned short SUSBCR_SPASB_1StopBit ; 
 unsigned short SUSBCR_SPASB_2StopBits ; 
 unsigned short SUSBCR_SPASB_EvenParity ; 
 unsigned short SUSBCR_SPASB_NoParity ; 
 unsigned short SUSBCR_SPASB_OddParity ; 
 int /*<<< orphan*/  SUSBCRequest_SetBaudRateParityAndStopBits ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_ENDPOINT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*,int,int) ; 
 int FUNC5 (struct tty_struct*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned short,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct kobil_private* FUNC7 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct tty_struct *tty,
			struct usb_serial_port *port, struct ktermios *old)
{
	struct kobil_private *priv;
	int result;
	unsigned short urb_val = 0;
	int c_cflag = tty->termios->c_cflag;
	speed_t speed;
	void *settings;

	priv = FUNC7(port);
	if (priv->device_type == KOBIL_USBTWIN_PRODUCT_ID ||
			priv->device_type == KOBIL_KAAN_SIM_PRODUCT_ID) {
		/* This device doesn't support ioctl calls */
		*tty->termios = *old;
		return;
	}

	speed = FUNC5(tty);
	switch (speed) {
	case 1200:
		urb_val = SUSBCR_SBR_1200;
		break;
	default:
		speed = 9600;
	case 9600:
		urb_val = SUSBCR_SBR_9600;
		break;
	}
	urb_val |= (c_cflag & CSTOPB) ? SUSBCR_SPASB_2StopBits :
							SUSBCR_SPASB_1StopBit;

	settings = FUNC1(50, GFP_KERNEL);
	if (!settings)
		return;

	FUNC2(settings, "%d ", speed);

	if (c_cflag & PARENB) {
		if  (c_cflag & PARODD) {
			urb_val |= SUSBCR_SPASB_OddParity;
			FUNC3(settings, "Odd Parity");
		} else {
			urb_val |= SUSBCR_SPASB_EvenParity;
			FUNC3(settings, "Even Parity");
		}
	} else {
		urb_val |= SUSBCR_SPASB_NoParity;
		FUNC3(settings, "No Parity");
	}
	tty->termios->c_cflag &= ~CMSPAR;
	FUNC4(tty, speed, speed);

	result = FUNC6(port->serial->dev,
		  FUNC8(port->serial->dev, 0),
		  SUSBCRequest_SetBaudRateParityAndStopBits,
		  USB_TYPE_VENDOR | USB_RECIP_ENDPOINT | USB_DIR_OUT,
		  urb_val,
		  0,
		  settings,
		  0,
		  KOBIL_TIMEOUT
		);
	FUNC0(settings);
}