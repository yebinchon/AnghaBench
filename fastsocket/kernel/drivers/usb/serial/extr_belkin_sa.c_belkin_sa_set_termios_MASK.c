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
struct usb_serial_port {int /*<<< orphan*/  dev; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct tty_struct {struct ktermios* termios; } ;
struct ktermios {unsigned int c_iflag; unsigned int c_cflag; } ;
struct belkin_sa_private {unsigned long control_state; int bad_flow_control; int /*<<< orphan*/  lock; } ;
typedef  int speed_t ;
typedef  int __u16 ;

/* Variables and functions */
 unsigned int B0 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int BELKIN_SA_FLOW_IRTS ; 
 int BELKIN_SA_FLOW_IXON ; 
 int BELKIN_SA_FLOW_NONE ; 
 int BELKIN_SA_FLOW_OCTS ; 
 int BELKIN_SA_FLOW_OXON ; 
 int BELKIN_SA_PARITY_EVEN ; 
 int BELKIN_SA_PARITY_NONE ; 
 int BELKIN_SA_PARITY_ODD ; 
 int /*<<< orphan*/  BELKIN_SA_SET_BAUDRATE_REQUEST ; 
 int /*<<< orphan*/  BELKIN_SA_SET_DATA_BITS_REQUEST ; 
 int /*<<< orphan*/  BELKIN_SA_SET_DTR_REQUEST ; 
 int /*<<< orphan*/  BELKIN_SA_SET_FLOW_CTRL_REQUEST ; 
 int /*<<< orphan*/  BELKIN_SA_SET_PARITY_REQUEST ; 
 int /*<<< orphan*/  BELKIN_SA_SET_RTS_REQUEST ; 
 int /*<<< orphan*/  BELKIN_SA_SET_STOP_BITS_REQUEST ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 unsigned int CBAUD ; 
 unsigned int CMSPAR ; 
 unsigned int CRTSCTS ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 unsigned int CSIZE ; 
 unsigned int CSTOPB ; 
 unsigned int IXOFF ; 
 unsigned int IXON ; 
 unsigned int PARENB ; 
 unsigned int PARODD ; 
 unsigned long TIOCM_DTR ; 
 unsigned long TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*,int,int) ; 
 int FUNC9 (struct tty_struct*) ; 
 struct belkin_sa_private* FUNC10 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC11(struct tty_struct *tty,
		struct usb_serial_port *port, struct ktermios *old_termios)
{
	struct usb_serial *serial = port->serial;
	struct belkin_sa_private *priv = FUNC10(port);
	unsigned int iflag;
	unsigned int cflag;
	unsigned int old_iflag = 0;
	unsigned int old_cflag = 0;
	__u16 urb_value = 0; /* Will hold the new flags */
	unsigned long flags;
	unsigned long control_state;
	int bad_flow_control;
	speed_t baud;
	struct ktermios *termios = tty->termios;

	iflag = termios->c_iflag;
	cflag = termios->c_cflag;

	termios->c_cflag &= ~CMSPAR;

	/* get a local copy of the current port settings */
	FUNC6(&priv->lock, flags);
	control_state = priv->control_state;
	bad_flow_control = priv->bad_flow_control;
	FUNC7(&priv->lock, flags);

	old_iflag = old_termios->c_iflag;
	old_cflag = old_termios->c_cflag;

	/* Set the baud rate */
	if ((cflag & CBAUD) != (old_cflag & CBAUD)) {
		/* reassert DTR and (maybe) RTS on transition from B0 */
		if ((old_cflag & CBAUD) == B0) {
			control_state |= (TIOCM_DTR|TIOCM_RTS);
			if (FUNC3(BELKIN_SA_SET_DTR_REQUEST, 1) < 0)
				FUNC5(&port->dev, "Set DTR error\n");
			/* don't set RTS if using hardware flow control */
			if (!(old_cflag & CRTSCTS))
				if (FUNC3(BELKIN_SA_SET_RTS_REQUEST
								, 1) < 0)
					FUNC5(&port->dev, "Set RTS error\n");
		}
	}

	baud = FUNC9(tty);
	if (baud) {
		urb_value = FUNC0(baud);
		/* Clip to maximum speed */
		if (urb_value == 0)
			urb_value = 1;
		/* Turn it back into a resulting real baud rate */
		baud = FUNC0(urb_value);

		/* Report the actual baud rate back to the caller */
		FUNC8(tty, baud, baud);
		if (FUNC3(BELKIN_SA_SET_BAUDRATE_REQUEST, urb_value) < 0)
			FUNC5(&port->dev, "Set baudrate error\n");
	} else {
		/* Disable flow control */
		if (FUNC3(BELKIN_SA_SET_FLOW_CTRL_REQUEST,
						BELKIN_SA_FLOW_NONE) < 0)
			FUNC5(&port->dev, "Disable flowcontrol error\n");
		/* Drop RTS and DTR */
		control_state &= ~(TIOCM_DTR | TIOCM_RTS);
		if (FUNC3(BELKIN_SA_SET_DTR_REQUEST, 0) < 0)
			FUNC5(&port->dev, "DTR LOW error\n");
		if (FUNC3(BELKIN_SA_SET_RTS_REQUEST, 0) < 0)
			FUNC5(&port->dev, "RTS LOW error\n");
	}

	/* set the parity */
	if ((cflag ^ old_cflag) & (PARENB | PARODD)) {
		if (cflag & PARENB)
			urb_value = (cflag & PARODD) ?  BELKIN_SA_PARITY_ODD
						: BELKIN_SA_PARITY_EVEN;
		else
			urb_value = BELKIN_SA_PARITY_NONE;
		if (FUNC3(BELKIN_SA_SET_PARITY_REQUEST, urb_value) < 0)
			FUNC5(&port->dev, "Set parity error\n");
	}

	/* set the number of data bits */
	if ((cflag & CSIZE) != (old_cflag & CSIZE)) {
		switch (cflag & CSIZE) {
		case CS5:
			urb_value = FUNC1(5);
			break;
		case CS6:
			urb_value = FUNC1(6);
			break;
		case CS7:
			urb_value = FUNC1(7);
			break;
		case CS8:
			urb_value = FUNC1(8);
			break;
		default: FUNC4("CSIZE was not CS5-CS8, using default of 8");
			urb_value = FUNC1(8);
			break;
		}
		if (FUNC3(BELKIN_SA_SET_DATA_BITS_REQUEST, urb_value) < 0)
			FUNC5(&port->dev, "Set data bits error\n");
	}

	/* set the number of stop bits */
	if ((cflag & CSTOPB) != (old_cflag & CSTOPB)) {
		urb_value = (cflag & CSTOPB) ? FUNC2(2)
						: FUNC2(1);
		if (FUNC3(BELKIN_SA_SET_STOP_BITS_REQUEST,
							urb_value) < 0)
			FUNC5(&port->dev, "Set stop bits error\n");
	}

	/* Set flow control */
	if (((iflag ^ old_iflag) & (IXOFF | IXON)) ||
		((cflag ^ old_cflag) & CRTSCTS)) {
		urb_value = 0;
		if ((iflag & IXOFF) || (iflag & IXON))
			urb_value |= (BELKIN_SA_FLOW_OXON | BELKIN_SA_FLOW_IXON);
		else
			urb_value &= ~(BELKIN_SA_FLOW_OXON | BELKIN_SA_FLOW_IXON);

		if (cflag & CRTSCTS)
			urb_value |=  (BELKIN_SA_FLOW_OCTS | BELKIN_SA_FLOW_IRTS);
		else
			urb_value &= ~(BELKIN_SA_FLOW_OCTS | BELKIN_SA_FLOW_IRTS);

		if (bad_flow_control)
			urb_value &= ~(BELKIN_SA_FLOW_IRTS);

		if (FUNC3(BELKIN_SA_SET_FLOW_CTRL_REQUEST, urb_value) < 0)
			FUNC5(&port->dev, "Set flow control error\n");
	}

	/* save off the modified port settings */
	FUNC6(&priv->lock, flags);
	priv->control_state = control_state;
	FUNC7(&priv->lock, flags);
}